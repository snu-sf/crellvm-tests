; ModuleID = './app/widgets/gimppatternselect.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpPatternSelectClass = type { %struct._GimpPdbDialogClass }
%struct._GimpPdbDialogClass = type { %struct._GimpDialogClass, %struct._GList*, %struct._GValueArray* (%struct._GimpPdbDialog*, %struct._GimpObject*, i32, %struct._GError**)* }
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
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GimpPdbDialog = type { %struct._GimpDialog, %struct._GimpPDB*, %struct._GimpContext*, %struct._GimpContext*, i64, %struct._GimpObject*, i8*, i32, %struct._GimpMenuFactory*, %struct._GtkWidget* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPDB = type { %struct._GimpObject, %struct._Gimp*, %struct._GHashTable*, %struct._GHashTable* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
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
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GHashTable = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type { %struct._GimpData, %struct._TempBuf* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpMenuFactory = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpPatternSelect = type { %struct._GimpPdbDialog }
%struct._GimpContainerEditor = type { %struct._GtkBox, %struct._GimpContainerView*, %struct._GimpContainerEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpContainerView = type opaque
%struct._GimpContainerEditorPrivate = type opaque
%struct._GimpContainerBox = type { %struct._GimpEditor, %struct._GtkWidget* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GimpEditorPrivate = type opaque
%struct._GimpArray = type { i8*, i64, i32 }

@gimp_pattern_select_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"GimpPatternSelect\00", align 1
@gimp_pattern_select_parent_class = internal global i8* null, align 8
@GimpPatternSelect_private_offset = internal global i32 0, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_pattern_select_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_pattern_select_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_pattern_select_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_pdb_dialog_get_type() #4
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 1000, void (i8*, i8*)* bitcast (void (i8*)* @gimp_pattern_select_class_intern_init to void (i8*, i8*)*), i32 336, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpPatternSelect*)* @gimp_pattern_select_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_pattern_select_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_pattern_select_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_dialog_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_pattern_select_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_pattern_select_parent_class, align 8
  %1 = load i32, i32* @GimpPatternSelect_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpPatternSelect_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpPatternSelectClass*
  call void @gimp_pattern_select_class_init(%struct._GimpPatternSelectClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_pattern_select_init(%struct._GimpPatternSelect* %select) #3 {
entry:
  %select.addr = alloca %struct._GimpPatternSelect*, align 8
  store %struct._GimpPatternSelect* %select, %struct._GimpPatternSelect** %select.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_pattern_select_class_init(%struct._GimpPatternSelectClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpPatternSelectClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %pdb_class = alloca %struct._GimpPdbDialogClass*, align 8
  store %struct._GimpPatternSelectClass* %klass, %struct._GimpPatternSelectClass** %klass.addr, align 8
  %0 = load %struct._GimpPatternSelectClass*, %struct._GimpPatternSelectClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpPatternSelectClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpPatternSelectClass*, %struct._GimpPatternSelectClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpPatternSelectClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_pdb_dialog_get_type() #4
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpPdbDialogClass*
  store %struct._GimpPdbDialogClass* %5, %struct._GimpPdbDialogClass** %pdb_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_pattern_select_constructed, void (%struct._GObject*)** %constructed, align 8
  %7 = load %struct._GimpPdbDialogClass*, %struct._GimpPdbDialogClass** %pdb_class, align 8
  %run_callback = getelementptr inbounds %struct._GimpPdbDialogClass, %struct._GimpPdbDialogClass* %7, i32 0, i32 2
  store %struct._GValueArray* (%struct._GimpPdbDialog*, %struct._GimpObject*, i32, %struct._GError**)* @gimp_pattern_select_run_callback, %struct._GValueArray* (%struct._GimpPdbDialog*, %struct._GimpObject*, i32, %struct._GError**)** %run_callback, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_pattern_select_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %dialog = alloca %struct._GimpPdbDialog*, align 8
  %content_area = alloca %struct._GtkWidget*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pdb_dialog_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPdbDialog*
  store %struct._GimpPdbDialog* %2, %struct._GimpPdbDialog** %dialog, align 8
  %3 = load i8*, i8** @gimp_pattern_select_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_pattern_select_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %context = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %12, i32 0, i32 3
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 1
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %pattern_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %14, i32 0, i32 39
  %15 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %pattern_factory, align 8
  %16 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %context5 = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %16, i32 0, i32 3
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context5, align 8
  %18 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %menu_factory = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %18, i32 0, i32 8
  %19 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory, align 8
  %call6 = call %struct._GtkWidget* @gimp_pattern_factory_view_new(i32 1, %struct._GimpDataFactory* %15, %struct._GimpContext* %17, i32 32, i32 1, %struct._GimpMenuFactory* %19)
  %20 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %view = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %20, i32 0, i32 9
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %view, align 8
  %21 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %view7 = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %21, i32 0, i32 9
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %view7, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_container_editor_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call8)
  %24 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpContainerEditor*
  %view10 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %24, i32 0, i32 1
  %25 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view10, align 8
  %26 = bitcast %struct._GimpContainerView* %25 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_container_box_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call11)
  %27 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpContainerBox*
  call void @gimp_container_box_set_size_request(%struct._GimpContainerBox* %27, i32 204, i32 204)
  %28 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %view13 = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %28, i32 0, i32 9
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %view13, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_container_get_type() #4
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call14)
  %31 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %31, i32 12)
  %32 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %33 = bitcast %struct._GimpPdbDialog* %32 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_dialog_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call16)
  %34 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkDialog*
  %call18 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %34)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %content_area, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %content_area, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_box_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call19)
  %37 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkBox*
  %38 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %view21 = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %38, i32 0, i32 9
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %view21, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %37, %struct._GtkWidget* %39, i32 1, i32 1, i32 0)
  %40 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %view22 = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %40, i32 0, i32 9
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %view22, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %41)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gimp_pattern_select_run_callback(%struct._GimpPdbDialog* %dialog, %struct._GimpObject* %object, i32 %closing, %struct._GError** %error) #3 {
entry:
  %dialog.addr = alloca %struct._GimpPdbDialog*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  %closing.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %pattern = alloca %struct._GimpPattern*, align 8
  %array = alloca %struct._GimpArray*, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  store %struct._GimpPdbDialog* %dialog, %struct._GimpPdbDialog** %dialog.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i32 %closing, i32* %closing.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pattern_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPattern*
  store %struct._GimpPattern* %2, %struct._GimpPattern** %pattern, align 8
  %3 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %3, i32 0, i32 1
  %4 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %call2 = call i8* @temp_buf_get_data(%struct._TempBuf* %4)
  %5 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask3 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %5, i32 0, i32 1
  %6 = load %struct._TempBuf*, %struct._TempBuf** %mask3, align 8
  %call4 = call i64 @temp_buf_get_data_size(%struct._TempBuf* %6)
  %call5 = call %struct._GimpArray* @gimp_array_new(i8* %call2, i64 %call4, i32 1)
  store %struct._GimpArray* %call5, %struct._GimpArray** %array, align 8
  %7 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog.addr, align 8
  %pdb = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %7, i32 0, i32 1
  %8 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %9 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog.addr, align 8
  %caller_context = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %9, i32 0, i32 2
  %10 = load %struct._GimpContext*, %struct._GimpContext** %caller_context, align 8
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %12 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog.addr, align 8
  %callback_name = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %12, i32 0, i32 6
  %13 = load i8*, i8** %callback_name, align 8
  %14 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %15 = bitcast %struct._GimpObject* %14 to i8*
  %call6 = call i8* @gimp_object_get_name(i8* %15)
  %call7 = call i64 @gimp_int32_get_type() #4
  %16 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask8 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %16, i32 0, i32 1
  %17 = load %struct._TempBuf*, %struct._TempBuf** %mask8, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %17, i32 0, i32 1
  %18 = load i32, i32* %width, align 4
  %call9 = call i64 @gimp_int32_get_type() #4
  %19 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask10 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %19, i32 0, i32 1
  %20 = load %struct._TempBuf*, %struct._TempBuf** %mask10, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %20, i32 0, i32 2
  %21 = load i32, i32* %height, align 4
  %call11 = call i64 @gimp_int32_get_type() #4
  %22 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask12 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %22, i32 0, i32 1
  %23 = load %struct._TempBuf*, %struct._TempBuf** %mask12, align 8
  %bytes = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %23, i32 0, i32 0
  %24 = load i32, i32* %bytes, align 4
  %call13 = call i64 @gimp_int32_get_type() #4
  %25 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %length = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %25, i32 0, i32 1
  %26 = load i64, i64* %length, align 8
  %call14 = call i64 @gimp_int8_array_get_type() #4
  %27 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %call15 = call i64 @gimp_int32_get_type() #4
  %28 = load i32, i32* %closing.addr, align 4
  %call16 = call %struct._GValueArray* (%struct._GimpPDB*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GError**, i8*, ...) @gimp_pdb_execute_procedure_by_name(%struct._GimpPDB* %8, %struct._GimpContext* %10, %struct._GimpProgress* null, %struct._GError** %11, i8* %13, i64 64, i8* %call6, i64 %call7, i32 %18, i64 %call9, i32 %21, i64 %call11, i32 %24, i64 %call13, i64 %26, i64 %call14, %struct._GimpArray* %27, i64 %call15, i32 %28, i64 4)
  store %struct._GValueArray* %call16, %struct._GValueArray** %return_vals, align 8
  %29 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  call void @gimp_array_free(%struct._GimpArray* %29)
  %30 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %30
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GtkWidget* @gimp_pattern_factory_view_new(i32, %struct._GimpDataFactory*, %struct._GimpContext*, i32, i32, %struct._GimpMenuFactory*) #1

declare void @gimp_container_box_set_size_request(%struct._GimpContainerBox*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_editor_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_container_box_get_type() #2

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pattern_get_type() #2

declare %struct._GimpArray* @gimp_array_new(i8*, i64, i32) #1

declare i8* @temp_buf_get_data(%struct._TempBuf*) #1

declare i64 @temp_buf_get_data_size(%struct._TempBuf*) #1

declare %struct._GValueArray* @gimp_pdb_execute_procedure_by_name(%struct._GimpPDB*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GError**, i8*, ...) #1

declare i8* @gimp_object_get_name(i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int32_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_int8_array_get_type() #2

declare void @gimp_array_free(%struct._GimpArray*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
