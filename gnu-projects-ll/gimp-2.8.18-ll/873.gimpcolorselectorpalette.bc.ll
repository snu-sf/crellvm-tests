; ModuleID = './app/widgets/gimpcolorselectorpalette.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpColorSelectorPaletteClass = type { %struct._GimpColorSelectorClass }
%struct._GimpColorSelectorClass = type { %struct._GtkBoxClass, i8*, i8*, i8*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, %struct._GimpColorConfig*)*, void ()*, void ()*, void ()* }
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
%struct._GimpColorSelector = type { %struct._GtkBox, i32, i32, i32, %struct._GimpRGB, %struct._GimpHSV, i32 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpHSV = type { double, double, double, double }
%struct._GimpColorConfig = type opaque
%struct._GimpColorSelectorPalette = type { %struct._GimpColorSelector, %struct._GimpContext*, %struct._GtkWidget* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._GimpImage = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type { %struct._GimpData, %struct._GList*, i32, i32 }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpPaletteEntry = type { %struct._GimpRGB, i8*, i32 }
%struct._GimpPaletteView = type { %struct._GimpView, %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry* }
%struct._GimpView = type { %struct._GtkWidget, %struct._GdkDrawable*, %struct._GimpViewable*, %struct._GimpViewRenderer*, i8, i32 }
%struct._GimpViewRenderer = type { %struct._GObject, %struct._GimpContext*, i64, %struct._GimpViewable*, i32, i32, i32, i8, i32, %struct._GimpRGB, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GdkPixbuf*, i8*, i32, i32, i32 }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GimpViewRendererPalette = type { %struct._GimpViewRenderer, i32, i32, i32, i32, i32, i32 }

@gimp_color_selector_palette_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"GimpColorSelectorPalette\00", align 1
@gimp_color_selector_palette_parent_class = internal global i8* null, align 8
@GimpColorSelectorPalette_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Palette\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"gimp-colorselector-palette\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"gtk-select-color\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"gimp-context\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"entry-clicked\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"palette-changed\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_selector_palette_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_color_selector_palette_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_color_selector_palette_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_color_selector_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 936, void (i8*, i8*)* bitcast (void (i8*)* @gimp_color_selector_palette_class_intern_init to void (i8*, i8*)*), i32 232, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpColorSelectorPalette*)* @gimp_color_selector_palette_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_color_selector_palette_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_color_selector_palette_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_selector_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_selector_palette_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_color_selector_palette_parent_class, align 8
  %1 = load i32, i32* @GimpColorSelectorPalette_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpColorSelectorPalette_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpColorSelectorPaletteClass*
  call void @gimp_color_selector_palette_class_init(%struct._GimpColorSelectorPaletteClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_selector_palette_init(%struct._GimpColorSelectorPalette* %select) #3 {
entry:
  %select.addr = alloca %struct._GimpColorSelectorPalette*, align 8
  store %struct._GimpColorSelectorPalette* %select, %struct._GimpColorSelectorPalette** %select.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_selector_palette_class_init(%struct._GimpColorSelectorPaletteClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpColorSelectorPaletteClass*, align 8
  %selector_class = alloca %struct._GimpColorSelectorClass*, align 8
  store %struct._GimpColorSelectorPaletteClass* %klass, %struct._GimpColorSelectorPaletteClass** %klass.addr, align 8
  %0 = load %struct._GimpColorSelectorPaletteClass*, %struct._GimpColorSelectorPaletteClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpColorSelectorPaletteClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_color_selector_get_type() #6
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpColorSelectorClass*
  store %struct._GimpColorSelectorClass* %2, %struct._GimpColorSelectorClass** %selector_class, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)) #5
  %3 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %name = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %3, i32 0, i32 1
  store i8* %call2, i8** %name, align 8
  %4 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %help_id = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %4, i32 0, i32 2
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i8** %help_id, align 8
  %5 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %stock_id = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %5, i32 0, i32 3
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8** %stock_id, align 8
  %6 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %set_color = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %6, i32 0, i32 7
  store void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)* @gimp_color_selector_palette_set_color, void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)** %set_color, align 8
  %7 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %set_config = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %7, i32 0, i32 11
  store void (%struct._GimpColorSelector*, %struct._GimpColorConfig*)* @gimp_color_selector_palette_set_config, void (%struct._GimpColorSelector*, %struct._GimpColorConfig*)** %set_config, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @gimp_color_selector_palette_set_color(%struct._GimpColorSelector* %selector, %struct._GimpRGB* %rgb, %struct._GimpHSV* %hsv) #3 {
entry:
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %hsv.addr = alloca %struct._GimpHSV*, align 8
  %select = alloca %struct._GimpColorSelectorPalette*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  %entry7 = alloca %struct._GimpPaletteEntry*, align 8
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store %struct._GimpHSV* %hsv, %struct._GimpHSV** %hsv.addr, align 8
  %0 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpColorSelector* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_selector_palette_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorSelectorPalette*
  store %struct._GimpColorSelectorPalette* %2, %struct._GimpColorSelectorPalette** %select, align 8
  %3 = load %struct._GimpColorSelectorPalette*, %struct._GimpColorSelectorPalette** %select, align 8
  %context = getelementptr inbounds %struct._GimpColorSelectorPalette, %struct._GimpColorSelectorPalette* %3, i32 0, i32 1
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %4, null
  br i1 %tobool, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpColorSelectorPalette*, %struct._GimpColorSelectorPalette** %select, align 8
  %context2 = getelementptr inbounds %struct._GimpColorSelectorPalette, %struct._GimpColorSelectorPalette* %5, i32 0, i32 1
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context2, align 8
  %call3 = call %struct._GimpPalette* @gimp_context_get_palette(%struct._GimpContext* %6)
  store %struct._GimpPalette* %call3, %struct._GimpPalette** %palette, align 8
  %7 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool4 = icmp ne %struct._GimpPalette* %7, null
  br i1 %tobool4, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.then
  %8 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call5 = call i32 @gimp_palette_get_n_colors(%struct._GimpPalette* %8)
  %cmp = icmp sgt i32 %call5, 0
  br i1 %cmp, label %if.then.6, label %if.end.16

if.then.6:                                        ; preds = %land.lhs.true
  %9 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %10 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %11 = load %struct._GimpColorSelectorPalette*, %struct._GimpColorSelectorPalette** %select, align 8
  %view = getelementptr inbounds %struct._GimpColorSelectorPalette, %struct._GimpColorSelectorPalette* %11, i32 0, i32 2
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_palette_view_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpPaletteView*
  %selected = getelementptr inbounds %struct._GimpPaletteView, %struct._GimpPaletteView* %14, i32 0, i32 1
  %15 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %selected, align 8
  %call10 = call %struct._GimpPaletteEntry* @gimp_palette_find_entry(%struct._GimpPalette* %9, %struct._GimpRGB* %10, %struct._GimpPaletteEntry* %15)
  store %struct._GimpPaletteEntry* %call10, %struct._GimpPaletteEntry** %entry7, align 8
  %16 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry7, align 8
  %tobool11 = icmp ne %struct._GimpPaletteEntry* %16, null
  br i1 %tobool11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then.6
  %17 = load %struct._GimpColorSelectorPalette*, %struct._GimpColorSelectorPalette** %select, align 8
  %view13 = getelementptr inbounds %struct._GimpColorSelectorPalette, %struct._GimpColorSelectorPalette* %17, i32 0, i32 2
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %view13, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_palette_view_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call14)
  %20 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpPaletteView*
  %21 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry7, align 8
  call void @gimp_palette_view_select_entry(%struct._GimpPaletteView* %20, %struct._GimpPaletteEntry* %21)
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then.6
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %land.lhs.true, %if.then
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_selector_palette_set_config(%struct._GimpColorSelector* %selector, %struct._GimpColorConfig* %config) #3 {
entry:
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  %config.addr = alloca %struct._GimpColorConfig*, align 8
  %select = alloca %struct._GimpColorSelectorPalette*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  store %struct._GimpColorConfig* %config, %struct._GimpColorConfig** %config.addr, align 8
  %0 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpColorSelector* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_selector_palette_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorSelectorPalette*
  store %struct._GimpColorSelectorPalette* %2, %struct._GimpColorSelectorPalette** %select, align 8
  %3 = load %struct._GimpColorSelectorPalette*, %struct._GimpColorSelectorPalette** %select, align 8
  %context = getelementptr inbounds %struct._GimpColorSelectorPalette, %struct._GimpColorSelectorPalette* %3, i32 0, i32 1
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpColorSelectorPalette*, %struct._GimpColorSelectorPalette** %select, align 8
  %context2 = getelementptr inbounds %struct._GimpColorSelectorPalette, %struct._GimpColorSelectorPalette* %5, i32 0, i32 1
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context2, align 8
  %7 = bitcast %struct._GimpContext* %6 to i8*
  %8 = load %struct._GimpColorSelectorPalette*, %struct._GimpColorSelectorPalette** %select, align 8
  %9 = bitcast %struct._GimpColorSelectorPalette* %8 to i8*
  %call3 = call i32 @g_signal_handlers_disconnect_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContext*, %struct._GimpPalette*, %struct._GimpColorSelectorPalette*)* @gimp_color_selector_palette_palette_changed to i8*), i8* %9)
  %10 = load %struct._GimpColorSelectorPalette*, %struct._GimpColorSelectorPalette** %select, align 8
  %view = getelementptr inbounds %struct._GimpColorSelectorPalette, %struct._GimpColorSelectorPalette* %10, i32 0, i32 2
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_view_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call4)
  %13 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpView*
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %13, i32 0, i32 3
  %14 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  call void @gimp_view_renderer_set_context(%struct._GimpViewRenderer* %14, %struct._GimpContext* null)
  %15 = load %struct._GimpColorSelectorPalette*, %struct._GimpColorSelectorPalette** %select, align 8
  %context6 = getelementptr inbounds %struct._GimpColorSelectorPalette, %struct._GimpColorSelectorPalette* %15, i32 0, i32 1
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context6, align 8
  %17 = bitcast %struct._GimpContext* %16 to i8*
  call void @g_object_unref(i8* %17)
  %18 = load %struct._GimpColorSelectorPalette*, %struct._GimpColorSelectorPalette** %select, align 8
  %context7 = getelementptr inbounds %struct._GimpColorSelectorPalette, %struct._GimpColorSelectorPalette* %18, i32 0, i32 1
  store %struct._GimpContext* null, %struct._GimpContext** %context7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %config.addr, align 8
  %tobool8 = icmp ne %struct._GimpColorConfig* %19, null
  br i1 %tobool8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end
  %20 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %config.addr, align 8
  %21 = bitcast %struct._GimpColorConfig* %20 to %struct._GTypeInstance*
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 80)
  %22 = bitcast %struct._GTypeInstance* %call10 to %struct._GObject*
  %call11 = call i8* @g_object_get_data(%struct._GObject* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0))
  %23 = bitcast i8* %call11 to %struct._GimpContext*
  %24 = load %struct._GimpColorSelectorPalette*, %struct._GimpColorSelectorPalette** %select, align 8
  %context12 = getelementptr inbounds %struct._GimpColorSelectorPalette, %struct._GimpColorSelectorPalette* %24, i32 0, i32 1
  store %struct._GimpContext* %23, %struct._GimpContext** %context12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end
  %25 = load %struct._GimpColorSelectorPalette*, %struct._GimpColorSelectorPalette** %select, align 8
  %context14 = getelementptr inbounds %struct._GimpColorSelectorPalette, %struct._GimpColorSelectorPalette* %25, i32 0, i32 1
  %26 = load %struct._GimpContext*, %struct._GimpContext** %context14, align 8
  %tobool15 = icmp ne %struct._GimpContext* %26, null
  br i1 %tobool15, label %if.then.16, label %if.end.64

if.then.16:                                       ; preds = %if.end.13
  %27 = load %struct._GimpColorSelectorPalette*, %struct._GimpColorSelectorPalette** %select, align 8
  %context17 = getelementptr inbounds %struct._GimpColorSelectorPalette, %struct._GimpColorSelectorPalette* %27, i32 0, i32 1
  %28 = load %struct._GimpContext*, %struct._GimpContext** %context17, align 8
  %29 = bitcast %struct._GimpContext* %28 to i8*
  %call18 = call i8* @g_object_ref(i8* %29)
  %30 = load %struct._GimpColorSelectorPalette*, %struct._GimpColorSelectorPalette** %select, align 8
  %view19 = getelementptr inbounds %struct._GimpColorSelectorPalette, %struct._GimpColorSelectorPalette* %30, i32 0, i32 2
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %view19, align 8
  %tobool20 = icmp ne %struct._GtkWidget* %31, null
  br i1 %tobool20, label %if.else, label %if.then.21

if.then.21:                                       ; preds = %if.then.16
  %call22 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %frame, align 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_frame_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call23)
  %34 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %34, i32 1)
  %35 = load %struct._GimpColorSelectorPalette*, %struct._GimpColorSelectorPalette** %select, align 8
  %36 = bitcast %struct._GimpColorSelectorPalette* %35 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_box_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call25)
  %37 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkBox*
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %37, %struct._GtkWidget* %38, i32 1, i32 1, i32 0)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %39)
  %40 = load %struct._GimpColorSelectorPalette*, %struct._GimpColorSelectorPalette** %select, align 8
  %context27 = getelementptr inbounds %struct._GimpColorSelectorPalette, %struct._GimpColorSelectorPalette* %40, i32 0, i32 1
  %41 = load %struct._GimpContext*, %struct._GimpContext** %context27, align 8
  %call28 = call i64 @gimp_palette_view_get_type() #6
  %call29 = call i64 @gimp_palette_get_type() #6
  %call30 = call %struct._GtkWidget* @gimp_view_new_full_by_types(%struct._GimpContext* %41, i64 %call28, i64 %call29, i32 100, i32 100, i32 0, i32 0, i32 1, i32 0)
  %42 = load %struct._GimpColorSelectorPalette*, %struct._GimpColorSelectorPalette** %select, align 8
  %view31 = getelementptr inbounds %struct._GimpColorSelectorPalette, %struct._GimpColorSelectorPalette* %42, i32 0, i32 2
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %view31, align 8
  %43 = load %struct._GimpColorSelectorPalette*, %struct._GimpColorSelectorPalette** %select, align 8
  %view32 = getelementptr inbounds %struct._GimpColorSelectorPalette, %struct._GimpColorSelectorPalette* %43, i32 0, i32 2
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %view32, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_view_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call33)
  %46 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpView*
  call void @gimp_view_set_expand(%struct._GimpView* %46, i32 1)
  %47 = load %struct._GimpColorSelectorPalette*, %struct._GimpColorSelectorPalette** %select, align 8
  %view35 = getelementptr inbounds %struct._GimpColorSelectorPalette, %struct._GimpColorSelectorPalette* %47, i32 0, i32 2
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %view35, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_view_get_type() #6
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call36)
  %50 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpView*
  %renderer38 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %50, i32 0, i32 3
  %51 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer38, align 8
  %52 = bitcast %struct._GimpViewRenderer* %51 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_view_renderer_palette_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call39)
  %53 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpViewRendererPalette*
  call void @gimp_view_renderer_palette_set_cell_size(%struct._GimpViewRendererPalette* %53, i32 -1)
  %54 = load %struct._GimpColorSelectorPalette*, %struct._GimpColorSelectorPalette** %select, align 8
  %view41 = getelementptr inbounds %struct._GimpColorSelectorPalette, %struct._GimpColorSelectorPalette* %54, i32 0, i32 2
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %view41, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_view_get_type() #6
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call42)
  %57 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpView*
  %renderer44 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %57, i32 0, i32 3
  %58 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer44, align 8
  %59 = bitcast %struct._GimpViewRenderer* %58 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_view_renderer_palette_get_type() #6
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call45)
  %60 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpViewRendererPalette*
  call void @gimp_view_renderer_palette_set_draw_grid(%struct._GimpViewRendererPalette* %60, i32 1)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_container_get_type() #6
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call47)
  %63 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkContainer*
  %64 = load %struct._GimpColorSelectorPalette*, %struct._GimpColorSelectorPalette** %select, align 8
  %view49 = getelementptr inbounds %struct._GimpColorSelectorPalette, %struct._GimpColorSelectorPalette* %64, i32 0, i32 2
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %view49, align 8
  call void @gtk_container_add(%struct._GtkContainer* %63, %struct._GtkWidget* %65)
  %66 = load %struct._GimpColorSelectorPalette*, %struct._GimpColorSelectorPalette** %select, align 8
  %view50 = getelementptr inbounds %struct._GimpColorSelectorPalette, %struct._GimpColorSelectorPalette* %66, i32 0, i32 2
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %view50, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %67)
  %68 = load %struct._GimpColorSelectorPalette*, %struct._GimpColorSelectorPalette** %select, align 8
  %view51 = getelementptr inbounds %struct._GimpColorSelectorPalette, %struct._GimpColorSelectorPalette* %68, i32 0, i32 2
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %view51, align 8
  %70 = bitcast %struct._GtkWidget* %69 to i8*
  %71 = load %struct._GimpColorSelectorPalette*, %struct._GimpColorSelectorPalette** %select, align 8
  %72 = bitcast %struct._GimpColorSelectorPalette* %71 to i8*
  %call52 = call i64 @g_signal_connect_data(i8* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPaletteView*, %struct._GimpPaletteEntry*, i32, %struct._GimpColorSelector*)* @gimp_color_selector_palette_entry_clicked to void ()*), i8* %72, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.58

if.else:                                          ; preds = %if.then.16
  %73 = load %struct._GimpColorSelectorPalette*, %struct._GimpColorSelectorPalette** %select, align 8
  %view53 = getelementptr inbounds %struct._GimpColorSelectorPalette, %struct._GimpColorSelectorPalette* %73, i32 0, i32 2
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %view53, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call54 = call i64 @gimp_view_get_type() #6
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call54)
  %76 = bitcast %struct._GTypeInstance* %call55 to %struct._GimpView*
  %renderer56 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %76, i32 0, i32 3
  %77 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer56, align 8
  %78 = load %struct._GimpColorSelectorPalette*, %struct._GimpColorSelectorPalette** %select, align 8
  %context57 = getelementptr inbounds %struct._GimpColorSelectorPalette, %struct._GimpColorSelectorPalette* %78, i32 0, i32 1
  %79 = load %struct._GimpContext*, %struct._GimpContext** %context57, align 8
  call void @gimp_view_renderer_set_context(%struct._GimpViewRenderer* %77, %struct._GimpContext* %79)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else, %if.then.21
  %80 = load %struct._GimpColorSelectorPalette*, %struct._GimpColorSelectorPalette** %select, align 8
  %context59 = getelementptr inbounds %struct._GimpColorSelectorPalette, %struct._GimpColorSelectorPalette* %80, i32 0, i32 1
  %81 = load %struct._GimpContext*, %struct._GimpContext** %context59, align 8
  %82 = bitcast %struct._GimpContext* %81 to i8*
  %83 = load %struct._GimpColorSelectorPalette*, %struct._GimpColorSelectorPalette** %select, align 8
  %84 = bitcast %struct._GimpColorSelectorPalette* %83 to i8*
  %call60 = call i64 @g_signal_connect_object(i8* %82, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContext*, %struct._GimpPalette*, %struct._GimpColorSelectorPalette*)* @gimp_color_selector_palette_palette_changed to void ()*), i8* %84, i32 0)
  %85 = load %struct._GimpColorSelectorPalette*, %struct._GimpColorSelectorPalette** %select, align 8
  %context61 = getelementptr inbounds %struct._GimpColorSelectorPalette, %struct._GimpColorSelectorPalette* %85, i32 0, i32 1
  %86 = load %struct._GimpContext*, %struct._GimpContext** %context61, align 8
  %87 = load %struct._GimpColorSelectorPalette*, %struct._GimpColorSelectorPalette** %select, align 8
  %context62 = getelementptr inbounds %struct._GimpColorSelectorPalette, %struct._GimpColorSelectorPalette* %87, i32 0, i32 1
  %88 = load %struct._GimpContext*, %struct._GimpContext** %context62, align 8
  %call63 = call %struct._GimpPalette* @gimp_context_get_palette(%struct._GimpContext* %88)
  %89 = load %struct._GimpColorSelectorPalette*, %struct._GimpColorSelectorPalette** %select, align 8
  call void @gimp_color_selector_palette_palette_changed(%struct._GimpContext* %86, %struct._GimpPalette* %call63, %struct._GimpColorSelectorPalette* %89)
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.58, %if.end.13
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GimpPalette* @gimp_context_get_palette(%struct._GimpContext*) #1

declare i32 @gimp_palette_get_n_colors(%struct._GimpPalette*) #1

declare %struct._GimpPaletteEntry* @gimp_palette_find_entry(%struct._GimpPalette*, %struct._GimpRGB*, %struct._GimpPaletteEntry*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_palette_view_get_type() #2

declare void @gimp_palette_view_select_entry(%struct._GimpPaletteView*, %struct._GimpPaletteEntry*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_selector_palette_palette_changed(%struct._GimpContext* %context, %struct._GimpPalette* %palette, %struct._GimpColorSelectorPalette* %select) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %palette.addr = alloca %struct._GimpPalette*, align 8
  %select.addr = alloca %struct._GimpColorSelectorPalette*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpPalette* %palette, %struct._GimpPalette** %palette.addr, align 8
  store %struct._GimpColorSelectorPalette* %select, %struct._GimpColorSelectorPalette** %select.addr, align 8
  %0 = load %struct._GimpColorSelectorPalette*, %struct._GimpColorSelectorPalette** %select.addr, align 8
  %view = getelementptr inbounds %struct._GimpColorSelectorPalette, %struct._GimpColorSelectorPalette* %0, i32 0, i32 2
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpView*
  %4 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %5 = bitcast %struct._GimpPalette* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_viewable_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpViewable*
  call void @gimp_view_set_viewable(%struct._GimpView* %3, %struct._GimpViewable* %6)
  ret void
}

declare void @gimp_view_renderer_set_context(%struct._GimpViewRenderer*, %struct._GimpContext*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_get_type() #2

declare void @g_object_unref(i8*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare i8* @g_object_ref(i8*) #1

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_view_new_full_by_types(%struct._GimpContext*, i64, i64, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_palette_get_type() #2

declare void @gimp_view_set_expand(%struct._GimpView*, i32) #1

declare void @gimp_view_renderer_palette_set_cell_size(%struct._GimpViewRendererPalette*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_renderer_palette_get_type() #2

declare void @gimp_view_renderer_palette_set_draw_grid(%struct._GimpViewRendererPalette*, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_selector_palette_entry_clicked(%struct._GimpPaletteView* %view, %struct._GimpPaletteEntry* %entry1, i32 %state, %struct._GimpColorSelector* %selector) #3 {
entry:
  %view.addr = alloca %struct._GimpPaletteView*, align 8
  %entry.addr = alloca %struct._GimpPaletteEntry*, align 8
  %state.addr = alloca i32, align 4
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  store %struct._GimpPaletteView* %view, %struct._GimpPaletteView** %view.addr, align 8
  store %struct._GimpPaletteEntry* %entry1, %struct._GimpPaletteEntry** %entry.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  %0 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %rgb = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %0, i32 0, i32 4
  %1 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  %color = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %1, i32 0, i32 0
  %2 = bitcast %struct._GimpRGB* %rgb to i8*
  %3 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 32, i32 8, i1 false)
  %4 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %rgb2 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %4, i32 0, i32 4
  %5 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %hsv = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %5, i32 0, i32 5
  call void @gimp_rgb_to_hsv(%struct._GimpRGB* %rgb2, %struct._GimpHSV* %hsv)
  %6 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  call void @gimp_color_selector_color_changed(%struct._GimpColorSelector* %6)
  ret void
}

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

declare void @gimp_view_set_viewable(%struct._GimpView*, %struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @gimp_rgb_to_hsv(%struct._GimpRGB*, %struct._GimpHSV*) #1

declare void @gimp_color_selector_color_changed(%struct._GimpColorSelector*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
