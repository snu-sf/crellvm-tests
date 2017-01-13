; ModuleID = './libgimp/gimppaletteselectbutton.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkTargetEntry = type { i8*, i32, i32 }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpPaletteSelectButtonClass = type { %struct._GimpSelectButtonClass, void (%struct._GimpPaletteSelectButton*, i8*, i32)*, void ()*, void ()*, void ()*, void ()* }
%struct._GimpSelectButtonClass = type { %struct._GtkBoxClass, i8*, void (i8*)*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GimpPaletteSelectButton = type { %struct._GimpSelectButton }
%struct._GimpSelectButton = type { %struct._GtkBox, i8* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpPaletteSelectButtonPrivate = type { i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkLabelSelectionInfo = type opaque
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_palette_select_button_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"GimpPaletteSelectButton\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"palette-name\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"LibGimp\00", align 1
@__func__.gimp_palette_select_button_get_palette = private unnamed_addr constant [39 x i8] c"gimp_palette_select_button_get_palette\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"GIMP_IS_PALETTE_SELECT_BUTTON (button)\00", align 1
@__func__.gimp_palette_select_button_set_palette = private unnamed_addr constant [39 x i8] c"gimp_palette_select_button_set_palette\00", align 1
@gimp_palette_select_button_parent_class = internal global i8* null, align 8
@GimpPaletteSelectButton_private_offset = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"Title\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"The title to be used for the palette selection popup dialog\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Palette Selection\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Palette name\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"The name of the currently selected palette\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"palette-set\00", align 1
@palette_button_signals = internal global [1 x i32] zeroinitializer, align 4
@.str.12 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"gimppaletteselectbutton.c\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"gtk-select-color\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@target = internal constant %struct._GtkTargetEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i32 0, i32 0), i32 0, i32 0 }, align 8
@.str.17 = private unnamed_addr constant [19 x i8] c"drag-data-received\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"application/x-gimp-palette-name\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"%s: received invalid palette data\00", align 1
@__func__.gimp_palette_select_drag_data_received = private unnamed_addr constant [39 x i8] c"gimp_palette_select_drag_data_received\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"%i:%p:%n\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_palette_select_button_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_palette_select_button_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_palette_select_button_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_select_button_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 936, void (i8*, i8*)* bitcast (void (i8*)* @gimp_palette_select_button_class_intern_init to void (i8*, i8*)*), i32 136, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpPaletteSelectButton*)* @gimp_palette_select_button_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_palette_select_button_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_palette_select_button_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_select_button_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_select_button_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_palette_select_button_parent_class, align 8
  %1 = load i32, i32* @GimpPaletteSelectButton_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpPaletteSelectButton_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpPaletteSelectButtonClass*
  call void @gimp_palette_select_button_class_init(%struct._GimpPaletteSelectButtonClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_select_button_init(%struct._GimpPaletteSelectButton* %button) #3 {
entry:
  %button.addr = alloca %struct._GimpPaletteSelectButton*, align 8
  %priv = alloca %struct._GimpPaletteSelectButtonPrivate*, align 8
  store %struct._GimpPaletteSelectButton* %button, %struct._GimpPaletteSelectButton** %button.addr, align 8
  %0 = load %struct._GimpPaletteSelectButton*, %struct._GimpPaletteSelectButton** %button.addr, align 8
  %1 = bitcast %struct._GimpPaletteSelectButton* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_select_button_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpPaletteSelectButtonPrivate*
  store %struct._GimpPaletteSelectButtonPrivate* %2, %struct._GimpPaletteSelectButtonPrivate** %priv, align 8
  %3 = load %struct._GimpPaletteSelectButtonPrivate*, %struct._GimpPaletteSelectButtonPrivate** %priv, align 8
  %palette_name = getelementptr inbounds %struct._GimpPaletteSelectButtonPrivate, %struct._GimpPaletteSelectButtonPrivate* %3, i32 0, i32 1
  store i8* null, i8** %palette_name, align 8
  %4 = load %struct._GimpPaletteSelectButton*, %struct._GimpPaletteSelectButton** %button.addr, align 8
  %call2 = call %struct._GtkWidget* @gimp_palette_select_button_create_inside(%struct._GimpPaletteSelectButton* %4)
  %5 = load %struct._GimpPaletteSelectButtonPrivate*, %struct._GimpPaletteSelectButtonPrivate** %priv, align 8
  %inside = getelementptr inbounds %struct._GimpPaletteSelectButtonPrivate, %struct._GimpPaletteSelectButtonPrivate* %5, i32 0, i32 2
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %inside, align 8
  %6 = load %struct._GimpPaletteSelectButton*, %struct._GimpPaletteSelectButton** %button.addr, align 8
  %7 = bitcast %struct._GimpPaletteSelectButton* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_container_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkContainer*
  %9 = load %struct._GimpPaletteSelectButtonPrivate*, %struct._GimpPaletteSelectButtonPrivate** %priv, align 8
  %inside5 = getelementptr inbounds %struct._GimpPaletteSelectButtonPrivate, %struct._GimpPaletteSelectButtonPrivate* %9, i32 0, i32 2
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %inside5, align 8
  call void @gtk_container_add(%struct._GtkContainer* %8, %struct._GtkWidget* %10)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_palette_select_button_new(i8* %title, i8* %palette_name) #3 {
entry:
  %title.addr = alloca i8*, align 8
  %palette_name.addr = alloca i8*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  store i8* %title, i8** %title.addr, align 8
  store i8* %palette_name, i8** %palette_name.addr, align 8
  %0 = load i8*, i8** %title.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i64 @gimp_palette_select_button_get_type() #7
  %1 = load i8*, i8** %title.addr, align 8
  %2 = load i8*, i8** %palette_name.addr, align 8
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* %2, i8* null)
  %3 = bitcast i8* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %3, %struct._GtkWidget** %button, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call i64 @gimp_palette_select_button_get_type() #7
  %4 = load i8*, i8** %palette_name.addr, align 8
  %call3 = call i8* (i64, i8*, ...) @g_object_new(i64 %call2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* %4, i8* null)
  %5 = bitcast i8* %call3 to %struct._GtkWidget*
  store %struct._GtkWidget* %5, %struct._GtkWidget** %button, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  ret %struct._GtkWidget* %6
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_palette_select_button_get_palette(%struct._GimpPaletteSelectButton* %button) #3 {
entry:
  %retval = alloca i8*, align 8
  %button.addr = alloca %struct._GimpPaletteSelectButton*, align 8
  %priv = alloca %struct._GimpPaletteSelectButtonPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPaletteSelectButton* %button, %struct._GimpPaletteSelectButton** %button.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaletteSelectButton*, %struct._GimpPaletteSelectButton** %button.addr, align 8
  %1 = bitcast %struct._GimpPaletteSelectButton* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_palette_select_button_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_palette_select_button_get_palette, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPaletteSelectButton*, %struct._GimpPaletteSelectButton** %button.addr, align 8
  %14 = bitcast %struct._GimpPaletteSelectButton* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_palette_select_button_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpPaletteSelectButtonPrivate*
  store %struct._GimpPaletteSelectButtonPrivate* %15, %struct._GimpPaletteSelectButtonPrivate** %priv, align 8
  %16 = load %struct._GimpPaletteSelectButtonPrivate*, %struct._GimpPaletteSelectButtonPrivate** %priv, align 8
  %palette_name = getelementptr inbounds %struct._GimpPaletteSelectButtonPrivate, %struct._GimpPaletteSelectButtonPrivate* %16, i32 0, i32 1
  %17 = load i8*, i8** %palette_name, align 8
  store i8* %17, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load i8*, i8** %retval
  ret i8* %18
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_palette_select_button_set_palette(%struct._GimpPaletteSelectButton* %button, i8* %palette_name) #3 {
entry:
  %button.addr = alloca %struct._GimpPaletteSelectButton*, align 8
  %palette_name.addr = alloca i8*, align 8
  %select_button = alloca %struct._GimpSelectButton*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %name = alloca i8*, align 8
  %num_colors = alloca i32, align 4
  store %struct._GimpPaletteSelectButton* %button, %struct._GimpPaletteSelectButton** %button.addr, align 8
  store i8* %palette_name, i8** %palette_name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaletteSelectButton*, %struct._GimpPaletteSelectButton** %button.addr, align 8
  %1 = bitcast %struct._GimpPaletteSelectButton* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_palette_select_button_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_palette_select_button_set_palette, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.32

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPaletteSelectButton*, %struct._GimpPaletteSelectButton** %button.addr, align 8
  %14 = bitcast %struct._GimpPaletteSelectButton* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_select_button_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpSelectButton*
  store %struct._GimpSelectButton* %15, %struct._GimpSelectButton** %select_button, align 8
  %16 = load %struct._GimpSelectButton*, %struct._GimpSelectButton** %select_button, align 8
  %temp_callback = getelementptr inbounds %struct._GimpSelectButton, %struct._GimpSelectButton* %16, i32 0, i32 1
  %17 = load i8*, i8** %temp_callback, align 8
  %tobool13 = icmp ne i8* %17, null
  br i1 %tobool13, label %if.then.14, label %if.else.17

if.then.14:                                       ; preds = %do.end
  %18 = load %struct._GimpSelectButton*, %struct._GimpSelectButton** %select_button, align 8
  %temp_callback15 = getelementptr inbounds %struct._GimpSelectButton, %struct._GimpSelectButton* %18, i32 0, i32 1
  %19 = load i8*, i8** %temp_callback15, align 8
  %20 = load i8*, i8** %palette_name.addr, align 8
  %call16 = call i32 @gimp_palettes_set_popup(i8* %19, i8* %20)
  br label %if.end.32

if.else.17:                                       ; preds = %do.end
  %21 = load i8*, i8** %palette_name.addr, align 8
  %tobool20 = icmp ne i8* %21, null
  br i1 %tobool20, label %land.lhs.true.21, label %if.else.25

land.lhs.true.21:                                 ; preds = %if.else.17
  %22 = load i8*, i8** %palette_name.addr, align 8
  %23 = load i8, i8* %22, align 1
  %conv = sext i8 %23 to i32
  %tobool22 = icmp ne i32 %conv, 0
  br i1 %tobool22, label %if.then.23, label %if.else.25

if.then.23:                                       ; preds = %land.lhs.true.21
  %24 = load i8*, i8** %palette_name.addr, align 8
  %call24 = call noalias i8* @g_strdup(i8* %24)
  store i8* %call24, i8** %name, align 8
  br label %if.end.27

if.else.25:                                       ; preds = %land.lhs.true.21, %if.else.17
  %call26 = call i8* @gimp_context_get_palette()
  store i8* %call26, i8** %name, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.25, %if.then.23
  %25 = load i8*, i8** %name, align 8
  %call28 = call i32 @gimp_palette_get_info(i8* %25, i32* %num_colors)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.27
  %26 = load i8*, i8** %name, align 8
  %27 = load %struct._GimpPaletteSelectButton*, %struct._GimpPaletteSelectButton** %button.addr, align 8
  %28 = bitcast %struct._GimpPaletteSelectButton* %27 to i8*
  call void @gimp_palette_select_button_callback(i8* %26, i32 0, i8* %28)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.27
  %29 = load i8*, i8** %name, align 8
  call void @g_free(i8* %29)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.9, %if.end.31, %if.then.14
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i32 @gimp_palettes_set_popup(i8*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @gimp_context_get_palette() #1

declare i32 @gimp_palette_get_info(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_select_button_callback(i8* %palette_name, i32 %dialog_closing, i8* %user_data) #3 {
entry:
  %palette_name.addr = alloca i8*, align 8
  %dialog_closing.addr = alloca i32, align 4
  %user_data.addr = alloca i8*, align 8
  %button = alloca %struct._GimpPaletteSelectButton*, align 8
  %priv = alloca %struct._GimpPaletteSelectButtonPrivate*, align 8
  %select_button = alloca %struct._GimpSelectButton*, align 8
  store i8* %palette_name, i8** %palette_name.addr, align 8
  store i32 %dialog_closing, i32* %dialog_closing.addr, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_select_button_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaletteSelectButton*
  store %struct._GimpPaletteSelectButton* %2, %struct._GimpPaletteSelectButton** %button, align 8
  %3 = load %struct._GimpPaletteSelectButton*, %struct._GimpPaletteSelectButton** %button, align 8
  %4 = bitcast %struct._GimpPaletteSelectButton* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_palette_select_button_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpPaletteSelectButtonPrivate*
  store %struct._GimpPaletteSelectButtonPrivate* %5, %struct._GimpPaletteSelectButtonPrivate** %priv, align 8
  %6 = load %struct._GimpPaletteSelectButton*, %struct._GimpPaletteSelectButton** %button, align 8
  %7 = bitcast %struct._GimpPaletteSelectButton* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_select_button_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpSelectButton*
  store %struct._GimpSelectButton* %8, %struct._GimpSelectButton** %select_button, align 8
  %9 = load %struct._GimpPaletteSelectButtonPrivate*, %struct._GimpPaletteSelectButtonPrivate** %priv, align 8
  %palette_name6 = getelementptr inbounds %struct._GimpPaletteSelectButtonPrivate, %struct._GimpPaletteSelectButtonPrivate* %9, i32 0, i32 1
  %10 = load i8*, i8** %palette_name6, align 8
  call void @g_free(i8* %10)
  %11 = load i8*, i8** %palette_name.addr, align 8
  %call7 = call noalias i8* @g_strdup(i8* %11)
  %12 = load %struct._GimpPaletteSelectButtonPrivate*, %struct._GimpPaletteSelectButtonPrivate** %priv, align 8
  %palette_name8 = getelementptr inbounds %struct._GimpPaletteSelectButtonPrivate, %struct._GimpPaletteSelectButtonPrivate* %12, i32 0, i32 1
  store i8* %call7, i8** %palette_name8, align 8
  %13 = load %struct._GimpPaletteSelectButtonPrivate*, %struct._GimpPaletteSelectButtonPrivate** %priv, align 8
  %label = getelementptr inbounds %struct._GimpPaletteSelectButtonPrivate, %struct._GimpPaletteSelectButtonPrivate* %13, i32 0, i32 3
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_label_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call9)
  %16 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkLabel*
  %17 = load i8*, i8** %palette_name.addr, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %16, i8* %17)
  %18 = load i32, i32* %dialog_closing.addr, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load %struct._GimpSelectButton*, %struct._GimpSelectButton** %select_button, align 8
  %temp_callback = getelementptr inbounds %struct._GimpSelectButton, %struct._GimpSelectButton* %19, i32 0, i32 1
  store i8* null, i8** %temp_callback, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load %struct._GimpPaletteSelectButton*, %struct._GimpPaletteSelectButton** %button, align 8
  %21 = bitcast %struct._GimpPaletteSelectButton* %20 to i8*
  %22 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @palette_button_signals, i32 0, i64 0), align 4
  %23 = load i8*, i8** %palette_name.addr, align 8
  %24 = load i32, i32* %dialog_closing.addr, align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %21, i32 %22, i32 0, i8* %23, i32 %24)
  %25 = load %struct._GimpPaletteSelectButton*, %struct._GimpPaletteSelectButton** %button, align 8
  %26 = bitcast %struct._GimpPaletteSelectButton* %25 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 80)
  %27 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  ret void
}

declare void @g_free(i8*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_select_button_class_init(%struct._GimpPaletteSelectButtonClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpPaletteSelectButtonClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %select_button_class = alloca %struct._GimpSelectButtonClass*, align 8
  store %struct._GimpPaletteSelectButtonClass* %klass, %struct._GimpPaletteSelectButtonClass** %klass.addr, align 8
  %0 = load %struct._GimpPaletteSelectButtonClass*, %struct._GimpPaletteSelectButtonClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpPaletteSelectButtonClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpPaletteSelectButtonClass*, %struct._GimpPaletteSelectButtonClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpPaletteSelectButtonClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_select_button_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpSelectButtonClass*
  store %struct._GimpSelectButtonClass* %5, %struct._GimpSelectButtonClass** %select_button_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_palette_select_button_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_palette_select_button_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_palette_select_button_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %9 = load %struct._GimpSelectButtonClass*, %struct._GimpSelectButtonClass** %select_button_class, align 8
  %select_destroy = getelementptr inbounds %struct._GimpSelectButtonClass, %struct._GimpSelectButtonClass* %9, i32 0, i32 2
  store void (i8*)* @gimp_palette_select_destroy, void (i8*)** %select_destroy, align 8
  %10 = load %struct._GimpPaletteSelectButtonClass*, %struct._GimpPaletteSelectButtonClass** %klass.addr, align 8
  %palette_set = getelementptr inbounds %struct._GimpPaletteSelectButtonClass, %struct._GimpPaletteSelectButtonClass* %10, i32 0, i32 1
  store void (%struct._GimpPaletteSelectButton*, i8*, i32)* null, void (%struct._GimpPaletteSelectButton*, i8*, i32)** %palette_set, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0)) #6
  %call4 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i32 0, i32 0), i8* %call3, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 1, %struct._GParamSpec* %call4)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i32 0, i32 0), i8* null, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 2, %struct._GParamSpec* %call5)
  %13 = load %struct._GimpPaletteSelectButtonClass*, %struct._GimpPaletteSelectButtonClass** %klass.addr, align 8
  %14 = bitcast %struct._GimpPaletteSelectButtonClass* %13 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %14, i32 0, i32 0
  %15 = load i64, i64* %g_type, align 8
  %call6 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i64 %15, i32 1, i32 896, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @_gimpui_marshal_VOID__STRING_BOOLEAN, i64 4, i32 2, i64 64, i64 20)
  store i32 %call6, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @palette_button_signals, i32 0, i64 0), align 4
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %17 = bitcast %struct._GObjectClass* %16 to i8*
  call void @g_type_class_add_private(i8* %17, i64 32)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_select_button_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %priv = alloca %struct._GimpPaletteSelectButtonPrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_select_button_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpPaletteSelectButtonPrivate*
  store %struct._GimpPaletteSelectButtonPrivate* %2, %struct._GimpPaletteSelectButtonPrivate** %priv, align 8
  %3 = load %struct._GimpPaletteSelectButtonPrivate*, %struct._GimpPaletteSelectButtonPrivate** %priv, align 8
  %palette_name = getelementptr inbounds %struct._GimpPaletteSelectButtonPrivate, %struct._GimpPaletteSelectButtonPrivate* %3, i32 0, i32 1
  %4 = load i8*, i8** %palette_name, align 8
  call void @g_free(i8* %4)
  %5 = load %struct._GimpPaletteSelectButtonPrivate*, %struct._GimpPaletteSelectButtonPrivate** %priv, align 8
  %palette_name2 = getelementptr inbounds %struct._GimpPaletteSelectButtonPrivate, %struct._GimpPaletteSelectButtonPrivate* %5, i32 0, i32 1
  store i8* null, i8** %palette_name2, align 8
  %6 = load %struct._GimpPaletteSelectButtonPrivate*, %struct._GimpPaletteSelectButtonPrivate** %priv, align 8
  %title = getelementptr inbounds %struct._GimpPaletteSelectButtonPrivate, %struct._GimpPaletteSelectButtonPrivate* %6, i32 0, i32 0
  %7 = load i8*, i8** %title, align 8
  call void @g_free(i8* %7)
  %8 = load %struct._GimpPaletteSelectButtonPrivate*, %struct._GimpPaletteSelectButtonPrivate** %priv, align 8
  %title3 = getelementptr inbounds %struct._GimpPaletteSelectButtonPrivate, %struct._GimpPaletteSelectButtonPrivate* %8, i32 0, i32 0
  store i8* null, i8** %title3, align 8
  %9 = load i8*, i8** @gimp_palette_select_button_parent_class, align 8
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
define internal void @gimp_palette_select_button_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %button = alloca %struct._GimpPaletteSelectButton*, align 8
  %priv = alloca %struct._GimpPaletteSelectButtonPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_select_button_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaletteSelectButton*
  store %struct._GimpPaletteSelectButton* %2, %struct._GimpPaletteSelectButton** %button, align 8
  %3 = load %struct._GimpPaletteSelectButton*, %struct._GimpPaletteSelectButton** %button, align 8
  %4 = bitcast %struct._GimpPaletteSelectButton* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_palette_select_button_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpPaletteSelectButtonPrivate*
  store %struct._GimpPaletteSelectButtonPrivate* %5, %struct._GimpPaletteSelectButtonPrivate** %priv, align 8
  %6 = load i32, i32* %property_id.addr, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i8* @g_value_dup_string(%struct._GValue* %7)
  %8 = load %struct._GimpPaletteSelectButtonPrivate*, %struct._GimpPaletteSelectButtonPrivate** %priv, align 8
  %title = getelementptr inbounds %struct._GimpPaletteSelectButtonPrivate, %struct._GimpPaletteSelectButtonPrivate* %8, i32 0, i32 0
  store i8* %call4, i8** %title, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %9 = load %struct._GimpPaletteSelectButton*, %struct._GimpPaletteSelectButton** %button, align 8
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i8* @g_value_get_string(%struct._GValue* %10)
  call void @gimp_palette_select_button_set_palette(%struct._GimpPaletteSelectButton* %9, i8* %call6)
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
  %call7 = call i8* @g_type_name(i64 %20)
  %21 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %22 = bitcast %struct._GObject* %21 to %struct._GTypeInstance*
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type9 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type9, align 8
  %call10 = call i8* @g_type_name(i64 %24)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0), i32 328, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 %14, i8* %16, i8* %call7, i8* %call10)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.5, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_select_button_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %button = alloca %struct._GimpPaletteSelectButton*, align 8
  %priv = alloca %struct._GimpPaletteSelectButtonPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_select_button_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaletteSelectButton*
  store %struct._GimpPaletteSelectButton* %2, %struct._GimpPaletteSelectButton** %button, align 8
  %3 = load %struct._GimpPaletteSelectButton*, %struct._GimpPaletteSelectButton** %button, align 8
  %4 = bitcast %struct._GimpPaletteSelectButton* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_palette_select_button_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpPaletteSelectButtonPrivate*
  store %struct._GimpPaletteSelectButtonPrivate* %5, %struct._GimpPaletteSelectButtonPrivate** %priv, align 8
  %6 = load i32, i32* %property_id.addr, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpPaletteSelectButtonPrivate*, %struct._GimpPaletteSelectButtonPrivate** %priv, align 8
  %title = getelementptr inbounds %struct._GimpPaletteSelectButtonPrivate, %struct._GimpPaletteSelectButtonPrivate* %8, i32 0, i32 0
  %9 = load i8*, i8** %title, align 8
  call void @g_value_set_string(%struct._GValue* %7, i8* %9)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpPaletteSelectButtonPrivate*, %struct._GimpPaletteSelectButtonPrivate** %priv, align 8
  %palette_name = getelementptr inbounds %struct._GimpPaletteSelectButtonPrivate, %struct._GimpPaletteSelectButtonPrivate* %11, i32 0, i32 1
  %12 = load i8*, i8** %palette_name, align 8
  call void @g_value_set_string(%struct._GValue* %10, i8* %12)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %13, %struct._GObject** %_glib__object, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %14, %struct._GParamSpec** %_glib__pspec, align 8
  %15 = load i32, i32* %property_id.addr, align 4
  store i32 %15, i32* %_glib__property_id, align 4
  %16 = load i32, i32* %_glib__property_id, align 4
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %17, i32 0, i32 1
  %18 = load i8*, i8** %name, align 8
  %19 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %20 = bitcast %struct._GParamSpec* %19 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type, align 8
  %call5 = call i8* @g_type_name(i64 %22)
  %23 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %24 = bitcast %struct._GObject* %23 to %struct._GTypeInstance*
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type7 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type7, align 8
  %call8 = call i8* @g_type_name(i64 %26)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0), i32 354, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 %16, i8* %18, i8* %call5, i8* %call8)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.4, %sw.bb
  ret void
}

declare void @gimp_palette_select_destroy(i8*) #1

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #5

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @_gimpui_marshal_VOID__STRING_BOOLEAN(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare i8* @g_value_dup_string(%struct._GValue*) #1

declare i8* @g_value_get_string(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare void @g_value_set_string(%struct._GValue*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_palette_select_button_create_inside(%struct._GimpPaletteSelectButton* %palette_button) #3 {
entry:
  %palette_button.addr = alloca %struct._GimpPaletteSelectButton*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %priv = alloca %struct._GimpPaletteSelectButtonPrivate*, align 8
  store %struct._GimpPaletteSelectButton* %palette_button, %struct._GimpPaletteSelectButton** %palette_button.addr, align 8
  %0 = load %struct._GimpPaletteSelectButton*, %struct._GimpPaletteSelectButton** %palette_button.addr, align 8
  %1 = bitcast %struct._GimpPaletteSelectButton* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_select_button_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpPaletteSelectButtonPrivate*
  store %struct._GimpPaletteSelectButtonPrivate* %2, %struct._GimpPaletteSelectButtonPrivate** %priv, align 8
  call void @gtk_widget_push_composite_child()
  %call2 = call %struct._GtkWidget* @gtk_button_new()
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %button, align 8
  %call3 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 4)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %hbox, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_container_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkContainer*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %5, %struct._GtkWidget* %6)
  %call6 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %image, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_box_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call7)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkBox*
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %9, %struct._GtkWidget* %10, i32 0, i32 0, i32 0)
  %11 = load %struct._GimpPaletteSelectButtonPrivate*, %struct._GimpPaletteSelectButtonPrivate** %priv, align 8
  %palette_name = getelementptr inbounds %struct._GimpPaletteSelectButtonPrivate, %struct._GimpPaletteSelectButtonPrivate* %11, i32 0, i32 1
  %12 = load i8*, i8** %palette_name, align 8
  %call9 = call %struct._GtkWidget* @gtk_label_new(i8* %12)
  %13 = load %struct._GimpPaletteSelectButtonPrivate*, %struct._GimpPaletteSelectButtonPrivate** %priv, align 8
  %label = getelementptr inbounds %struct._GimpPaletteSelectButtonPrivate, %struct._GimpPaletteSelectButtonPrivate* %13, i32 0, i32 3
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %label, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_box_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call10)
  %16 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkBox*
  %17 = load %struct._GimpPaletteSelectButtonPrivate*, %struct._GimpPaletteSelectButtonPrivate** %priv, align 8
  %label12 = getelementptr inbounds %struct._GimpPaletteSelectButtonPrivate, %struct._GimpPaletteSelectButtonPrivate* %17, i32 0, i32 3
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %label12, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %16, %struct._GtkWidget* %18, i32 1, i32 1, i32 4)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show_all(%struct._GtkWidget* %19)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %21 = bitcast %struct._GtkWidget* %20 to i8*
  %22 = load %struct._GimpPaletteSelectButton*, %struct._GimpPaletteSelectButton** %palette_button.addr, align 8
  %23 = bitcast %struct._GimpPaletteSelectButton* %22 to i8*
  %call13 = call i64 @g_signal_connect_data(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPaletteSelectButton*)* @gimp_palette_select_button_clicked to void ()*), i8* %23, void (i8*, %struct._GClosure*)* null, i32 2)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_widget_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call14)
  %26 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWidget*
  call void @gtk_drag_dest_set(%struct._GtkWidget* %26, i32 7, %struct._GtkTargetEntry* @target, i32 1, i32 2)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %28 = bitcast %struct._GtkWidget* %27 to i8*
  %29 = load %struct._GimpPaletteSelectButton*, %struct._GimpPaletteSelectButton** %palette_button.addr, align 8
  %30 = bitcast %struct._GimpPaletteSelectButton* %29 to i8*
  %call16 = call i64 @g_signal_connect_data(i8* %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPaletteSelectButton*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)* @gimp_palette_select_drag_data_received to void ()*), i8* %30, void (i8*, %struct._GClosure*)* null, i32 2)
  call void @gtk_widget_pop_composite_child()
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  ret %struct._GtkWidget* %31
}

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_widget_push_composite_child() #1

declare %struct._GtkWidget* @gtk_button_new() #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_widget_show_all(%struct._GtkWidget*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_select_button_clicked(%struct._GimpPaletteSelectButton* %button) #3 {
entry:
  %button.addr = alloca %struct._GimpPaletteSelectButton*, align 8
  %priv = alloca %struct._GimpPaletteSelectButtonPrivate*, align 8
  %select_button = alloca %struct._GimpSelectButton*, align 8
  store %struct._GimpPaletteSelectButton* %button, %struct._GimpPaletteSelectButton** %button.addr, align 8
  %0 = load %struct._GimpPaletteSelectButton*, %struct._GimpPaletteSelectButton** %button.addr, align 8
  %1 = bitcast %struct._GimpPaletteSelectButton* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_select_button_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpPaletteSelectButtonPrivate*
  store %struct._GimpPaletteSelectButtonPrivate* %2, %struct._GimpPaletteSelectButtonPrivate** %priv, align 8
  %3 = load %struct._GimpPaletteSelectButton*, %struct._GimpPaletteSelectButton** %button.addr, align 8
  %4 = bitcast %struct._GimpPaletteSelectButton* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_select_button_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpSelectButton*
  store %struct._GimpSelectButton* %5, %struct._GimpSelectButton** %select_button, align 8
  %6 = load %struct._GimpSelectButton*, %struct._GimpSelectButton** %select_button, align 8
  %temp_callback = getelementptr inbounds %struct._GimpSelectButton, %struct._GimpSelectButton* %6, i32 0, i32 1
  %7 = load i8*, i8** %temp_callback, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpSelectButton*, %struct._GimpSelectButton** %select_button, align 8
  %temp_callback4 = getelementptr inbounds %struct._GimpSelectButton, %struct._GimpSelectButton* %8, i32 0, i32 1
  %9 = load i8*, i8** %temp_callback4, align 8
  %10 = load %struct._GimpPaletteSelectButtonPrivate*, %struct._GimpPaletteSelectButtonPrivate** %priv, align 8
  %palette_name = getelementptr inbounds %struct._GimpPaletteSelectButtonPrivate, %struct._GimpPaletteSelectButtonPrivate* %10, i32 0, i32 1
  %11 = load i8*, i8** %palette_name, align 8
  %call5 = call i32 @gimp_palettes_set_popup(i8* %9, i8* %11)
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load %struct._GimpPaletteSelectButtonPrivate*, %struct._GimpPaletteSelectButtonPrivate** %priv, align 8
  %title = getelementptr inbounds %struct._GimpPaletteSelectButtonPrivate, %struct._GimpPaletteSelectButtonPrivate* %12, i32 0, i32 0
  %13 = load i8*, i8** %title, align 8
  %14 = load %struct._GimpPaletteSelectButtonPrivate*, %struct._GimpPaletteSelectButtonPrivate** %priv, align 8
  %palette_name6 = getelementptr inbounds %struct._GimpPaletteSelectButtonPrivate, %struct._GimpPaletteSelectButtonPrivate* %14, i32 0, i32 1
  %15 = load i8*, i8** %palette_name6, align 8
  %16 = load %struct._GimpPaletteSelectButton*, %struct._GimpPaletteSelectButton** %button.addr, align 8
  %17 = bitcast %struct._GimpPaletteSelectButton* %16 to i8*
  %call7 = call i8* @gimp_palette_select_new(i8* %13, i8* %15, void (i8*, i32, i8*)* @gimp_palette_select_button_callback, i8* %17)
  %18 = load %struct._GimpSelectButton*, %struct._GimpSelectButton** %select_button, align 8
  %temp_callback8 = getelementptr inbounds %struct._GimpSelectButton, %struct._GimpSelectButton* %18, i32 0, i32 1
  store i8* %call7, i8** %temp_callback8, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @gtk_drag_dest_set(%struct._GtkWidget*, i32, %struct._GtkTargetEntry*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_select_drag_data_received(%struct._GimpPaletteSelectButton* %button, %struct._GdkDragContext* %context, i32 %x, i32 %y, %struct._GtkSelectionData* %selection, i32 %info, i32 %time) #3 {
entry:
  %button.addr = alloca %struct._GimpPaletteSelectButton*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %info.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %length = alloca i32, align 4
  %str = alloca i8*, align 8
  %pid = alloca i32, align 4
  %unused = alloca i8*, align 8
  %name_offset = alloca i32, align 4
  %name = alloca i8*, align 8
  store %struct._GimpPaletteSelectButton* %button, %struct._GimpPaletteSelectButton** %button.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store i32 %info, i32* %info.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call = call i32 @gtk_selection_data_get_length(%struct._GtkSelectionData* %0)
  store i32 %call, i32* %length, align 4
  %1 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call1 = call i32 @gtk_selection_data_get_format(%struct._GtkSelectionData* %1)
  %cmp = icmp ne i32 %call1, 8
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %length, align 4
  %cmp2 = icmp slt i32 %2, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_palette_select_drag_data_received, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call3 = call i8* @gtk_selection_data_get_data(%struct._GtkSelectionData* %3)
  %4 = load i32, i32* %length, align 4
  %conv = sext i32 %4 to i64
  %call4 = call noalias i8* @g_strndup(i8* %call3, i64 %conv)
  store i8* %call4, i8** %str, align 8
  %5 = load i8*, i8** %str, align 8
  %call5 = call i32 @g_utf8_validate(i8* %5, i64 -1, i8** null)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.6, label %if.end.18

if.then.6:                                        ; preds = %if.end
  store i32 0, i32* %name_offset, align 4
  %6 = load i8*, i8** %str, align 8
  %call7 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32* %pid, i8** %unused, i32* %name_offset) #6
  %cmp8 = icmp sge i32 %call7, 2
  br i1 %cmp8, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.then.6
  %7 = load i32, i32* %pid, align 4
  %call10 = call i32 @gimp_getpid()
  %cmp11 = icmp eq i32 %7, %call10
  br i1 %cmp11, label %land.lhs.true.13, label %if.end.17

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %8 = load i32, i32* %name_offset, align 4
  %cmp14 = icmp sgt i32 %8, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %land.lhs.true.13
  %9 = load i8*, i8** %str, align 8
  %10 = load i32, i32* %name_offset, align 4
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  store i8* %add.ptr, i8** %name, align 8
  %11 = load %struct._GimpPaletteSelectButton*, %struct._GimpPaletteSelectButton** %button.addr, align 8
  %12 = load i8*, i8** %name, align 8
  call void @gimp_palette_select_button_set_palette(%struct._GimpPaletteSelectButton* %11, i8* %12)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %land.lhs.true.13, %land.lhs.true, %if.then.6
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  %13 = load i8*, i8** %str, align 8
  call void @g_free(i8* %13)
  br label %return

return:                                           ; preds = %if.end.18, %if.then
  ret void
}

declare void @gtk_widget_pop_composite_child() #1

declare i8* @gimp_palette_select_new(i8*, i8*, void (i8*, i32, i8*)*, i8*) #1

declare i32 @gtk_selection_data_get_length(%struct._GtkSelectionData*) #1

declare i32 @gtk_selection_data_get_format(%struct._GtkSelectionData*) #1

declare noalias i8* @g_strndup(i8*, i64) #1

declare i8* @gtk_selection_data_get_data(%struct._GtkSelectionData*) #1

declare i32 @g_utf8_validate(i8*, i64, i8**) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare i32 @gimp_getpid() #1

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

declare void @g_signal_emit(i8*, i32, i32, ...) #1

declare void @g_object_notify(%struct._GObject*, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
