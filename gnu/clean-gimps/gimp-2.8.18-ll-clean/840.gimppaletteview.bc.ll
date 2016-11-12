; ModuleID = './app/widgets/gimppaletteview.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpPaletteViewClass = type { %struct._GimpViewClass, void (%struct._GimpPaletteView*, %struct._GimpPaletteEntry*, i32)*, void (%struct._GimpPaletteView*, %struct._GimpPaletteEntry*)*, void (%struct._GimpPaletteView*, %struct._GimpPaletteEntry*)*, void (%struct._GimpPaletteView*, %struct._GimpPaletteEntry*)*, void (%struct._GimpPaletteView*, %struct._GimpPaletteEntry*, %struct._GimpRGB*)* }
%struct._GimpViewClass = type { %struct._GtkWidgetClass, void (%struct._GimpView*, %struct._GimpViewable*, %struct._GimpViewable*)*, void (%struct._GimpView*, i32)*, void (%struct._GimpView*)*, void (%struct._GimpView*)* }
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
%struct._GimpView = type { %struct._GtkWidget, %struct._GdkDrawable*, %struct._GimpViewable*, %struct._GimpViewRenderer*, i8, i32 }
%struct._GimpViewRenderer = type { %struct._GObject, %struct._GimpContext*, i64, %struct._GimpViewable*, i32, i32, i32, i8, i32, %struct._GimpRGB, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GdkPixbuf*, i8*, i32, i32, i32 }
%struct._GimpContext = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpPaletteView = type { %struct._GimpView, %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry* }
%struct._GimpPaletteEntry = type { %struct._GimpRGB, i8*, i32 }
%struct._GimpViewRendererPalette = type { %struct._GimpViewRenderer, i32, i32, i32, i32, i32, i32 }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._cairo = type opaque
%struct._GimpPalette = type { %struct._GimpData, %struct._GList*, i32, i32 }
%struct._GimpData = type { %struct._GimpViewable }

@gimp_palette_view_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpPaletteView\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_palette_view_select_entry = private unnamed_addr constant [31 x i8] c"gimp_palette_view_select_entry\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"GIMP_IS_PALETTE_VIEW (view)\00", align 1
@view_signals = internal global [5 x i32] zeroinitializer, align 16
@gimp_palette_view_parent_class = internal global i8* null, align 8
@GimpPaletteView_private_offset = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"entry-clicked\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"entry-selected\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"entry-activated\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"entry-context\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"color-dropped\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"invalidate-preview\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_palette_view_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_palette_view_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_palette_view_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_view_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 792, void (i8*, i8*)* bitcast (void (i8*)* @gimp_palette_view_class_intern_init to void (i8*, i8*)*), i32 144, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpPaletteView*)* @gimp_palette_view_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_palette_view_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_palette_view_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_view_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_palette_view_parent_class, align 8
  %1 = load i32, i32* @GimpPaletteView_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpPaletteView_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpPaletteViewClass*
  call void @gimp_palette_view_class_init(%struct._GimpPaletteViewClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_view_init(%struct._GimpPaletteView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpPaletteView*, align 8
  store %struct._GimpPaletteView* %view, %struct._GimpPaletteView** %view.addr, align 8
  %0 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view.addr, align 8
  %1 = bitcast %struct._GimpPaletteView* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_widget_set_can_focus(%struct._GtkWidget* %2, i32 1)
  %3 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view.addr, align 8
  %selected = getelementptr inbounds %struct._GimpPaletteView, %struct._GimpPaletteView* %3, i32 0, i32 1
  store %struct._GimpPaletteEntry* null, %struct._GimpPaletteEntry** %selected, align 8
  %4 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view.addr, align 8
  %dnd_entry = getelementptr inbounds %struct._GimpPaletteView, %struct._GimpPaletteView* %4, i32 0, i32 2
  store %struct._GimpPaletteEntry* null, %struct._GimpPaletteEntry** %dnd_entry, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_palette_view_select_entry(%struct._GimpPaletteView* %view, %struct._GimpPaletteEntry* %entry1) #3 {
entry:
  %view.addr = alloca %struct._GimpPaletteView*, align 8
  %entry.addr = alloca %struct._GimpPaletteEntry*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPaletteView* %view, %struct._GimpPaletteView** %view.addr, align 8
  store %struct._GimpPaletteEntry* %entry1, %struct._GimpPaletteEntry** %entry.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view.addr, align 8
  %1 = bitcast %struct._GimpPaletteView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_palette_view_get_type() #6
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_palette_view_select_entry, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %13 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  %14 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view.addr, align 8
  %selected = getelementptr inbounds %struct._GimpPaletteView, %struct._GimpPaletteView* %14, i32 0, i32 1
  %15 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %selected, align 8
  %cmp12 = icmp eq %struct._GimpPaletteEntry* %13, %15
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end
  br label %return

if.end.14:                                        ; preds = %do.end
  %16 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view.addr, align 8
  %selected15 = getelementptr inbounds %struct._GimpPaletteView, %struct._GimpPaletteView* %16, i32 0, i32 1
  %17 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %selected15, align 8
  %tobool16 = icmp ne %struct._GimpPaletteEntry* %17, null
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.14
  %18 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view.addr, align 8
  %19 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view.addr, align 8
  %selected18 = getelementptr inbounds %struct._GimpPaletteView, %struct._GimpPaletteView* %19, i32 0, i32 1
  %20 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %selected18, align 8
  call void @gimp_palette_view_expose_entry(%struct._GimpPaletteView* %18, %struct._GimpPaletteEntry* %20)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.end.14
  %21 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  %22 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view.addr, align 8
  %selected20 = getelementptr inbounds %struct._GimpPaletteView, %struct._GimpPaletteView* %22, i32 0, i32 1
  store %struct._GimpPaletteEntry* %21, %struct._GimpPaletteEntry** %selected20, align 8
  %23 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view.addr, align 8
  %selected21 = getelementptr inbounds %struct._GimpPaletteView, %struct._GimpPaletteView* %23, i32 0, i32 1
  %24 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %selected21, align 8
  %tobool22 = icmp ne %struct._GimpPaletteEntry* %24, null
  br i1 %tobool22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.19
  %25 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view.addr, align 8
  %26 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view.addr, align 8
  %selected24 = getelementptr inbounds %struct._GimpPaletteView, %struct._GimpPaletteView* %26, i32 0, i32 1
  %27 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %selected24, align 8
  call void @gimp_palette_view_expose_entry(%struct._GimpPaletteView* %25, %struct._GimpPaletteEntry* %27)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.19
  %28 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view.addr, align 8
  %29 = bitcast %struct._GimpPaletteView* %28 to i8*
  %30 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @view_signals, i32 0, i64 1), align 4
  %31 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view.addr, align 8
  %selected26 = getelementptr inbounds %struct._GimpPaletteView, %struct._GimpPaletteView* %31, i32 0, i32 1
  %32 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %selected26, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %29, i32 %30, i32 0, %struct._GimpPaletteEntry* %32)
  br label %return

return:                                           ; preds = %if.end.25, %if.then.13, %if.else.10
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_view_expose_entry(%struct._GimpPaletteView* %view, %struct._GimpPaletteEntry* %entry1) #3 {
entry:
  %view.addr = alloca %struct._GimpPaletteView*, align 8
  %entry.addr = alloca %struct._GimpPaletteEntry*, align 8
  %renderer = alloca %struct._GimpViewRendererPalette*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %widget = alloca %struct._GtkWidget*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  store %struct._GimpPaletteView* %view, %struct._GimpPaletteView** %view.addr, align 8
  store %struct._GimpPaletteEntry* %entry1, %struct._GimpPaletteEntry** %entry.addr, align 8
  %0 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view.addr, align 8
  %1 = bitcast %struct._GimpPaletteView* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWidget*
  store %struct._GtkWidget* %2, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view.addr, align 8
  %4 = bitcast %struct._GimpPaletteView* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_view_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpView*
  %renderer5 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %5, i32 0, i32 3
  %6 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer5, align 8
  %7 = bitcast %struct._GimpViewRenderer* %6 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_view_renderer_palette_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call6)
  %8 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpViewRendererPalette*
  store %struct._GimpViewRendererPalette* %8, %struct._GimpViewRendererPalette** %renderer, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %9, %struct._GdkRectangle* %allocation)
  %10 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  %position = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %10, i32 0, i32 2
  %11 = load i32, i32* %position, align 4
  %12 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderer, align 8
  %columns = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %12, i32 0, i32 5
  %13 = load i32, i32* %columns, align 4
  %div = sdiv i32 %11, %13
  store i32 %div, i32* %row, align 4
  %14 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  %position8 = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %14, i32 0, i32 2
  %15 = load i32, i32* %position8, align 4
  %16 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderer, align 8
  %columns9 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %16, i32 0, i32 5
  %17 = load i32, i32* %columns9, align 4
  %rem = srem i32 %15, %17
  store i32 %rem, i32* %col, align 4
  %18 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view.addr, align 8
  %19 = bitcast %struct._GimpPaletteView* %18 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_widget_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call10)
  %20 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkWidget*
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %21 = load i32, i32* %x, align 4
  %22 = load i32, i32* %col, align 4
  %23 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderer, align 8
  %cell_width = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %23, i32 0, i32 3
  %24 = load i32, i32* %cell_width, align 4
  %mul = mul nsw i32 %22, %24
  %add = add nsw i32 %21, %mul
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %25 = load i32, i32* %y, align 4
  %26 = load i32, i32* %row, align 4
  %27 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderer, align 8
  %cell_height = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %27, i32 0, i32 4
  %28 = load i32, i32* %cell_height, align 4
  %mul12 = mul nsw i32 %26, %28
  %add13 = add nsw i32 %25, %mul12
  %29 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderer, align 8
  %cell_width14 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %29, i32 0, i32 3
  %30 = load i32, i32* %cell_width14, align 4
  %add15 = add nsw i32 %30, 1
  %31 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderer, align 8
  %cell_height16 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %31, i32 0, i32 4
  %32 = load i32, i32* %cell_height16, align 4
  %add17 = add nsw i32 %32, 1
  call void @gtk_widget_queue_draw_area(%struct._GtkWidget* %20, i32 %add, i32 %add13, i32 %add15, i32 %add17)
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_view_class_init(%struct._GimpPaletteViewClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpPaletteViewClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  %view_class = alloca %struct._GimpViewClass*, align 8
  store %struct._GimpPaletteViewClass* %klass, %struct._GimpPaletteViewClass** %klass.addr, align 8
  %0 = load %struct._GimpPaletteViewClass*, %struct._GimpPaletteViewClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpPaletteViewClass* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %2, %struct._GtkWidgetClass** %widget_class, align 8
  %3 = load %struct._GimpPaletteViewClass*, %struct._GimpPaletteViewClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpPaletteViewClass* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_view_get_type() #6
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpViewClass*
  store %struct._GimpViewClass* %5, %struct._GimpViewClass** %view_class, align 8
  %6 = load %struct._GimpPaletteViewClass*, %struct._GimpPaletteViewClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpPaletteViewClass* %6 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %call4 = call i64 @gdk_modifier_type_get_type() #6
  %call5 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i64 %8, i32 1, i32 752, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @gimp_marshal_VOID__POINTER_ENUM, i64 4, i32 2, i64 68, i64 %call4)
  store i32 %call5, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @view_signals, i32 0, i64 0), align 4
  %9 = load %struct._GimpPaletteViewClass*, %struct._GimpPaletteViewClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpPaletteViewClass* %9 to %struct._GTypeClass*
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type6, align 8
  %call7 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i64 %11, i32 1, i32 760, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__POINTER, i64 4, i32 1, i64 68)
  store i32 %call7, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @view_signals, i32 0, i64 1), align 4
  %12 = load %struct._GimpPaletteViewClass*, %struct._GimpPaletteViewClass** %klass.addr, align 8
  %13 = bitcast %struct._GimpPaletteViewClass* %12 to %struct._GTypeClass*
  %g_type8 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type8, align 8
  %call9 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i64 %14, i32 1, i32 768, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__POINTER, i64 4, i32 1, i64 68)
  store i32 %call9, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @view_signals, i32 0, i64 2), align 4
  %15 = load %struct._GimpPaletteViewClass*, %struct._GimpPaletteViewClass** %klass.addr, align 8
  %16 = bitcast %struct._GimpPaletteViewClass* %15 to %struct._GTypeClass*
  %g_type10 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type10, align 8
  %call11 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i64 %17, i32 1, i32 776, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__POINTER, i64 4, i32 1, i64 68)
  store i32 %call11, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @view_signals, i32 0, i64 3), align 4
  %18 = load %struct._GimpPaletteViewClass*, %struct._GimpPaletteViewClass** %klass.addr, align 8
  %19 = bitcast %struct._GimpPaletteViewClass* %18 to %struct._GTypeClass*
  %g_type12 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type12, align 8
  %call13 = call i64 @gimp_rgb_get_type() #6
  %call14 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i64 %20, i32 1, i32 784, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @gimp_marshal_VOID__POINTER_BOXED, i64 4, i32 2, i64 68, i64 %call13)
  store i32 %call14, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @view_signals, i32 0, i64 4), align 4
  %21 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %expose_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %21, i32 0, i32 31
  store i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @gimp_palette_view_expose, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)** %expose_event, align 8
  %22 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %button_press_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %22, i32 0, i32 25
  store i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @gimp_palette_view_button_press, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_press_event, align 8
  %23 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %key_press_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %23, i32 0, i32 32
  store i32 (%struct._GtkWidget*, %struct._GdkEventKey*)* @gimp_palette_view_key_press, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)** %key_press_event, align 8
  %24 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %focus = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %24, i32 0, i32 23
  store i32 (%struct._GtkWidget*, i32)* @gimp_palette_view_focus, i32 (%struct._GtkWidget*, i32)** %focus, align 8
  %25 = load %struct._GimpViewClass*, %struct._GimpViewClass** %view_class, align 8
  %set_viewable = getelementptr inbounds %struct._GimpViewClass, %struct._GimpViewClass* %25, i32 0, i32 1
  store void (%struct._GimpView*, %struct._GimpViewable*, %struct._GimpViewable*)* @gimp_palette_view_set_viewable, void (%struct._GimpView*, %struct._GimpViewable*, %struct._GimpViewable*)** %set_viewable, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @gimp_marshal_VOID__POINTER_ENUM(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gdk_modifier_type_get_type() #2

declare void @g_cclosure_marshal_VOID__POINTER(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @gimp_marshal_VOID__POINTER_BOXED(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_rgb_get_type() #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_palette_view_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %eevent) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %eevent.addr = alloca %struct._GdkEventExpose*, align 8
  %pal_view = alloca %struct._GimpPaletteView*, align 8
  %view = alloca %struct._GimpView*, align 8
  %renderer11 = alloca %struct._GimpViewRendererPalette*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %cr = alloca %struct._cairo*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %eevent, %struct._GdkEventExpose** %eevent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaletteView*
  store %struct._GimpPaletteView* %2, %struct._GimpPaletteView** %pal_view, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_view_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpView*
  store %struct._GimpView* %5, %struct._GimpView** %view, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call4 = call i32 @gtk_widget_is_drawable(%struct._GtkWidget* %6)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** @gimp_palette_view_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call5 = call i64 @gtk_widget_get_type() #6
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 %call5)
  %9 = bitcast %struct._GTypeClass* %call6 to %struct._GtkWidgetClass*
  %expose_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %9, i32 0, i32 31
  %10 = load i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)*, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)** %expose_event, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %12 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %eevent.addr, align 8
  %call7 = call i32 %10(%struct._GtkWidget* %11, %struct._GdkEventExpose* %12)
  %13 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %13, i32 0, i32 3
  %14 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %14, i32 0, i32 3
  %15 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %tobool8 = icmp ne %struct._GimpViewable* %15, null
  br i1 %tobool8, label %land.lhs.true, label %if.end.37

land.lhs.true:                                    ; preds = %if.end
  %16 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %pal_view, align 8
  %selected = getelementptr inbounds %struct._GimpPaletteView, %struct._GimpPaletteView* %16, i32 0, i32 1
  %17 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %selected, align 8
  %tobool9 = icmp ne %struct._GimpPaletteEntry* %17, null
  br i1 %tobool9, label %if.then.10, label %if.end.37

if.then.10:                                       ; preds = %land.lhs.true
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call12 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %18)
  store %struct._GtkStyle* %call12, %struct._GtkStyle** %style, align 8
  %19 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer13 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %19, i32 0, i32 3
  %20 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer13, align 8
  %21 = bitcast %struct._GimpViewRenderer* %20 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_view_renderer_palette_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call14)
  %22 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpViewRendererPalette*
  store %struct._GimpViewRendererPalette* %22, %struct._GimpViewRendererPalette** %renderer11, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %23, %struct._GdkRectangle* %allocation)
  %24 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %pal_view, align 8
  %selected16 = getelementptr inbounds %struct._GimpPaletteView, %struct._GimpPaletteView* %24, i32 0, i32 1
  %25 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %selected16, align 8
  %position = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %25, i32 0, i32 2
  %26 = load i32, i32* %position, align 4
  %27 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderer11, align 8
  %columns = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %27, i32 0, i32 5
  %28 = load i32, i32* %columns, align 4
  %div = sdiv i32 %26, %28
  store i32 %div, i32* %row, align 4
  %29 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %pal_view, align 8
  %selected17 = getelementptr inbounds %struct._GimpPaletteView, %struct._GimpPaletteView* %29, i32 0, i32 1
  %30 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %selected17, align 8
  %position18 = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %30, i32 0, i32 2
  %31 = load i32, i32* %position18, align 4
  %32 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderer11, align 8
  %columns19 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %32, i32 0, i32 5
  %33 = load i32, i32* %columns19, align 4
  %rem = srem i32 %31, %33
  store i32 %rem, i32* %col, align 4
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call20 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %34)
  %call21 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call20)
  store %struct._cairo* %call21, %struct._cairo** %cr, align 8
  %35 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %36 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %eevent.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %36, i32 0, i32 4
  %37 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_cairo_region(%struct._cairo* %35, %struct._GdkRegion* %37)
  %38 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %38)
  %39 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %40 = load i32, i32* %x, align 4
  %conv = sitofp i32 %40 to double
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %41 = load i32, i32* %y, align 4
  %conv22 = sitofp i32 %41 to double
  call void @cairo_translate(%struct._cairo* %39, double %conv, double %conv22)
  %42 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %43 = load i32, i32* %col, align 4
  %44 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderer11, align 8
  %cell_width = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %44, i32 0, i32 3
  %45 = load i32, i32* %cell_width, align 4
  %mul = mul nsw i32 %43, %45
  %conv23 = sitofp i32 %mul to double
  %add = fadd double %conv23, 5.000000e-01
  %46 = load i32, i32* %row, align 4
  %47 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderer11, align 8
  %cell_height = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %47, i32 0, i32 4
  %48 = load i32, i32* %cell_height, align 4
  %mul24 = mul nsw i32 %46, %48
  %conv25 = sitofp i32 %mul24 to double
  %add26 = fadd double %conv25, 5.000000e-01
  %49 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderer11, align 8
  %cell_width27 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %49, i32 0, i32 3
  %50 = load i32, i32* %cell_width27, align 4
  %conv28 = sitofp i32 %50 to double
  %51 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderer11, align 8
  %cell_height29 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %51, i32 0, i32 4
  %52 = load i32, i32* %cell_height29, align 4
  %conv30 = sitofp i32 %52 to double
  call void @cairo_rectangle(%struct._cairo* %42, double %add, double %add26, double %conv28, double %conv30)
  %53 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %53, double 1.000000e+00)
  %54 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %55 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %fg = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %55, i32 0, i32 1
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %fg, i32 0, i64 3
  call void @gdk_cairo_set_source_color(%struct._cairo* %54, %struct._GdkColor* %arrayidx)
  %56 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke_preserve(%struct._cairo* %56)
  %57 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call31 = call i32 @gimp_cairo_set_focus_line_pattern(%struct._cairo* %57, %struct._GtkWidget* %58)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %if.then.10
  %59 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %60 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %fg34 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %60, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %fg34, i32 0, i64 0
  call void @gdk_cairo_set_source_color(%struct._cairo* %59, %struct._GdkColor* %arrayidx35)
  %61 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %61)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %if.then.10
  %62 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %62)
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %land.lhs.true, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.37, %if.then
  %63 = load i32, i32* %retval
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_palette_view_button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %bevent) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %bevent.addr = alloca %struct._GdkEventButton*, align 8
  %view = alloca %struct._GimpPaletteView*, align 8
  %entry2 = alloca %struct._GimpPaletteEntry*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %bevent, %struct._GdkEventButton** %bevent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaletteView*
  store %struct._GimpPaletteView* %2, %struct._GimpPaletteView** %view, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call3 = call i32 @gtk_widget_get_can_focus(%struct._GtkWidget* %3)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call4 = call i32 @gtk_widget_has_focus(%struct._GtkWidget* %4)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view, align 8
  %7 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %7, i32 0, i32 4
  %8 = load double, double* %x, align 8
  %conv = fptosi double %8 to i32
  %9 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %9, i32 0, i32 5
  %10 = load double, double* %y, align 8
  %conv6 = fptosi double %10 to i32
  %call7 = call %struct._GimpPaletteEntry* @gimp_palette_view_find_entry(%struct._GimpPaletteView* %6, i32 %conv, i32 %conv6)
  store %struct._GimpPaletteEntry* %call7, %struct._GimpPaletteEntry** %entry2, align 8
  %11 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry2, align 8
  %12 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view, align 8
  %dnd_entry = getelementptr inbounds %struct._GimpPaletteView, %struct._GimpPaletteView* %12, i32 0, i32 2
  store %struct._GimpPaletteEntry* %11, %struct._GimpPaletteEntry** %dnd_entry, align 8
  %13 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry2, align 8
  %tobool8 = icmp ne %struct._GimpPaletteEntry* %13, null
  br i1 %tobool8, label %lor.lhs.false, label %if.then.10

lor.lhs.false:                                    ; preds = %if.end
  %14 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %14, i32 0, i32 8
  %15 = load i32, i32* %button, align 4
  %cmp = icmp eq i32 %15, 2
  br i1 %cmp, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %if.end
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %lor.lhs.false
  %16 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %type = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %16, i32 0, i32 0
  %17 = load i32, i32* %type, align 4
  %cmp12 = icmp eq i32 %17, 4
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  %18 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view, align 8
  %19 = bitcast %struct._GimpPaletteView* %18 to i8*
  %20 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @view_signals, i32 0, i64 0), align 4
  %21 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry2, align 8
  %22 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %state = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %22, i32 0, i32 7
  %23 = load i32, i32* %state, align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %19, i32 %20, i32 0, %struct._GimpPaletteEntry* %21, i32 %23)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.11
  %24 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %25 = bitcast %struct._GdkEventButton* %24 to %union._GdkEvent*
  %call16 = call i32 @gdk_event_triggers_context_menu(%union._GdkEvent* %25)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end.15
  %26 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry2, align 8
  %27 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view, align 8
  %selected = getelementptr inbounds %struct._GimpPaletteView, %struct._GimpPaletteView* %27, i32 0, i32 1
  %28 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %selected, align 8
  %cmp19 = icmp ne %struct._GimpPaletteEntry* %26, %28
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.18
  %29 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view, align 8
  %30 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry2, align 8
  call void @gimp_palette_view_select_entry(%struct._GimpPaletteView* %29, %struct._GimpPaletteEntry* %30)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.then.18
  %31 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view, align 8
  %32 = bitcast %struct._GimpPaletteView* %31 to i8*
  %33 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @view_signals, i32 0, i64 3), align 4
  %34 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry2, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %32, i32 %33, i32 0, %struct._GimpPaletteEntry* %34)
  br label %if.end.43

if.else:                                          ; preds = %if.end.15
  %35 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %button23 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %35, i32 0, i32 8
  %36 = load i32, i32* %button23, align 4
  %cmp24 = icmp eq i32 %36, 1
  br i1 %cmp24, label %if.then.26, label %if.end.42

if.then.26:                                       ; preds = %if.else
  %37 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %type27 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %37, i32 0, i32 0
  %38 = load i32, i32* %type27, align 4
  %cmp28 = icmp eq i32 %38, 4
  br i1 %cmp28, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.then.26
  %39 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view, align 8
  %40 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry2, align 8
  call void @gimp_palette_view_select_entry(%struct._GimpPaletteView* %39, %struct._GimpPaletteEntry* %40)
  br label %if.end.41

if.else.31:                                       ; preds = %if.then.26
  %41 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %type32 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %41, i32 0, i32 0
  %42 = load i32, i32* %type32, align 4
  %cmp33 = icmp eq i32 %42, 5
  br i1 %cmp33, label %land.lhs.true.35, label %if.end.40

land.lhs.true.35:                                 ; preds = %if.else.31
  %43 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry2, align 8
  %44 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view, align 8
  %selected36 = getelementptr inbounds %struct._GimpPaletteView, %struct._GimpPaletteView* %44, i32 0, i32 1
  %45 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %selected36, align 8
  %cmp37 = icmp eq %struct._GimpPaletteEntry* %43, %45
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %land.lhs.true.35
  %46 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view, align 8
  %47 = bitcast %struct._GimpPaletteView* %46 to i8*
  %48 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @view_signals, i32 0, i64 2), align 4
  %49 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry2, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %47, i32 %48, i32 0, %struct._GimpPaletteEntry* %49)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %land.lhs.true.35, %if.else.31
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.30
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.else
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.22
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.43, %if.then.10
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_palette_view_key_press(%struct._GtkWidget* %widget, %struct._GdkEventKey* %kevent) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %view = alloca %struct._GimpPaletteView*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaletteView*
  store %struct._GimpPaletteView* %2, %struct._GimpPaletteView** %view, align 8
  %3 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view, align 8
  %selected = getelementptr inbounds %struct._GimpPaletteView, %struct._GimpPaletteView* %3, i32 0, i32 1
  %4 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %selected, align 8
  %tobool = icmp ne %struct._GimpPaletteEntry* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %5, i32 0, i32 5
  %6 = load i32, i32* %keyval, align 4
  %cmp = icmp eq i32 %6, 32
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %7 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %keyval2 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %7, i32 0, i32 5
  %8 = load i32, i32* %keyval2, align 4
  %cmp3 = icmp eq i32 %8, 65408
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %9 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %keyval5 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %9, i32 0, i32 5
  %10 = load i32, i32* %keyval5, align 4
  %cmp6 = icmp eq i32 %10, 65293
  br i1 %cmp6, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.4
  %11 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %keyval8 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %11, i32 0, i32 5
  %12 = load i32, i32* %keyval8, align 4
  %cmp9 = icmp eq i32 %12, 65421
  br i1 %cmp9, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.7
  %13 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %keyval11 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %13, i32 0, i32 5
  %14 = load i32, i32* %keyval11, align 4
  %cmp12 = icmp eq i32 %14, 65076
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.10, %lor.lhs.false.7, %lor.lhs.false.4, %lor.lhs.false, %land.lhs.true
  %15 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view, align 8
  %16 = bitcast %struct._GimpPaletteView* %15 to i8*
  %17 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @view_signals, i32 0, i64 0), align 4
  %18 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view, align 8
  %selected13 = getelementptr inbounds %struct._GimpPaletteView, %struct._GimpPaletteView* %18, i32 0, i32 1
  %19 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %selected13, align 8
  %20 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %state = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %20, i32 0, i32 4
  %21 = load i32, i32* %state, align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %16, i32 %17, i32 0, %struct._GimpPaletteEntry* %19, i32 %21)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.10, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_palette_view_focus(%struct._GtkWidget* %widget, i32 %direction) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %direction.addr = alloca i32, align 4
  %view = alloca %struct._GimpPaletteView*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  %entry15 = alloca %struct._GimpPaletteEntry*, align 8
  %renderer21 = alloca %struct._GimpViewRendererPalette*, align 8
  %skip = alloca i32, align 4
  %entry34 = alloca %struct._GimpPaletteEntry*, align 8
  %position = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %direction, i32* %direction.addr, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaletteView*
  store %struct._GimpPaletteView* %2, %struct._GimpPaletteView** %view, align 8
  %3 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view, align 8
  %4 = bitcast %struct._GimpPaletteView* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_view_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpView*
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %5, i32 0, i32 3
  %6 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %6, i32 0, i32 3
  %7 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %8 = bitcast %struct._GimpViewable* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_palette_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpPalette*
  store %struct._GimpPalette* %9, %struct._GimpPalette** %palette, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call6 = call i32 @gtk_widget_get_can_focus(%struct._GtkWidget* %10)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %entry
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call7 = call i32 @gtk_widget_has_focus(%struct._GtkWidget* %11)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.17, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %12)
  %13 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view, align 8
  %selected = getelementptr inbounds %struct._GimpPaletteView, %struct._GimpPaletteView* %13, i32 0, i32 1
  %14 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %selected, align 8
  %tobool9 = icmp ne %struct._GimpPaletteEntry* %14, null
  br i1 %tobool9, label %if.end, label %land.lhs.true.10

land.lhs.true.10:                                 ; preds = %if.then
  %15 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool11 = icmp ne %struct._GimpPalette* %15, null
  br i1 %tobool11, label %land.lhs.true.12, label %if.end

land.lhs.true.12:                                 ; preds = %land.lhs.true.10
  %16 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call13 = call i32 @gimp_palette_get_n_colors(%struct._GimpPalette* %16)
  %cmp = icmp sgt i32 %call13, 0
  br i1 %cmp, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %land.lhs.true.12
  %17 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call16 = call %struct._GimpPaletteEntry* @gimp_palette_get_entry(%struct._GimpPalette* %17, i32 0)
  store %struct._GimpPaletteEntry* %call16, %struct._GimpPaletteEntry** %entry15, align 8
  %18 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view, align 8
  %19 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry15, align 8
  call void @gimp_palette_view_select_entry(%struct._GimpPaletteView* %18, %struct._GimpPaletteEntry* %19)
  br label %if.end

if.end:                                           ; preds = %if.then.14, %land.lhs.true.12, %land.lhs.true.10, %if.then
  store i32 1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %land.lhs.true, %entry
  %20 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view, align 8
  %selected18 = getelementptr inbounds %struct._GimpPaletteView, %struct._GimpPaletteView* %20, i32 0, i32 1
  %21 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %selected18, align 8
  %tobool19 = icmp ne %struct._GimpPaletteEntry* %21, null
  br i1 %tobool19, label %if.then.20, label %if.end.42

if.then.20:                                       ; preds = %if.end.17
  store i32 0, i32* %skip, align 4
  %22 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view, align 8
  %23 = bitcast %struct._GimpPaletteView* %22 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_view_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call22)
  %24 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpView*
  %renderer24 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %24, i32 0, i32 3
  %25 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer24, align 8
  %26 = bitcast %struct._GimpViewRenderer* %25 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_view_renderer_palette_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call25)
  %27 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpViewRendererPalette*
  store %struct._GimpViewRendererPalette* %27, %struct._GimpViewRendererPalette** %renderer21, align 8
  %28 = load i32, i32* %direction.addr, align 4
  switch i32 %28, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.27
    i32 4, label %sw.bb.29
    i32 5, label %sw.bb.30
    i32 0, label %sw.bb.31
    i32 1, label %sw.bb.31
  ]

sw.bb:                                            ; preds = %if.then.20
  %29 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderer21, align 8
  %columns = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %29, i32 0, i32 5
  %30 = load i32, i32* %columns, align 4
  %sub = sub nsw i32 0, %30
  store i32 %sub, i32* %skip, align 4
  br label %sw.epilog

sw.bb.27:                                         ; preds = %if.then.20
  %31 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderer21, align 8
  %columns28 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %31, i32 0, i32 5
  %32 = load i32, i32* %columns28, align 4
  store i32 %32, i32* %skip, align 4
  br label %sw.epilog

sw.bb.29:                                         ; preds = %if.then.20
  store i32 -1, i32* %skip, align 4
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.then.20
  store i32 1, i32* %skip, align 4
  br label %sw.epilog

sw.bb.31:                                         ; preds = %if.then.20, %if.then.20
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.then.20, %sw.bb.30, %sw.bb.29, %sw.bb.27, %sw.bb
  %33 = load i32, i32* %skip, align 4
  %cmp32 = icmp ne i32 %33, 0
  br i1 %cmp32, label %if.then.33, label %if.end.41

if.then.33:                                       ; preds = %sw.epilog
  %34 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view, align 8
  %selected35 = getelementptr inbounds %struct._GimpPaletteView, %struct._GimpPaletteView* %34, i32 0, i32 1
  %35 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %selected35, align 8
  %position36 = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %35, i32 0, i32 2
  %36 = load i32, i32* %position36, align 4
  %37 = load i32, i32* %skip, align 4
  %add = add nsw i32 %36, %37
  store i32 %add, i32* %position, align 4
  %38 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %39 = load i32, i32* %position, align 4
  %call37 = call %struct._GimpPaletteEntry* @gimp_palette_get_entry(%struct._GimpPalette* %38, i32 %39)
  store %struct._GimpPaletteEntry* %call37, %struct._GimpPaletteEntry** %entry34, align 8
  %40 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry34, align 8
  %tobool38 = icmp ne %struct._GimpPaletteEntry* %40, null
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.33
  %41 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view, align 8
  %42 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry34, align 8
  call void @gimp_palette_view_select_entry(%struct._GimpPaletteView* %41, %struct._GimpPaletteEntry* %42)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.then.33
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %sw.epilog
  store i32 1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.end.17
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.42, %if.end.41, %sw.bb.31, %if.end
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_view_set_viewable(%struct._GimpView* %view, %struct._GimpViewable* %old_viewable, %struct._GimpViewable* %new_viewable) #3 {
entry:
  %view.addr = alloca %struct._GimpView*, align 8
  %old_viewable.addr = alloca %struct._GimpViewable*, align 8
  %new_viewable.addr = alloca %struct._GimpViewable*, align 8
  %pal_view = alloca %struct._GimpPaletteView*, align 8
  store %struct._GimpView* %view, %struct._GimpView** %view.addr, align 8
  store %struct._GimpViewable* %old_viewable, %struct._GimpViewable** %old_viewable.addr, align 8
  store %struct._GimpViewable* %new_viewable, %struct._GimpViewable** %new_viewable.addr, align 8
  %0 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %1 = bitcast %struct._GimpView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaletteView*
  store %struct._GimpPaletteView* %2, %struct._GimpPaletteView** %pal_view, align 8
  %3 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %pal_view, align 8
  %dnd_entry = getelementptr inbounds %struct._GimpPaletteView, %struct._GimpPaletteView* %3, i32 0, i32 2
  store %struct._GimpPaletteEntry* null, %struct._GimpPaletteEntry** %dnd_entry, align 8
  %4 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %pal_view, align 8
  call void @gimp_palette_view_select_entry(%struct._GimpPaletteView* %4, %struct._GimpPaletteEntry* null)
  %5 = load %struct._GimpViewable*, %struct._GimpViewable** %old_viewable.addr, align 8
  %tobool = icmp ne %struct._GimpViewable* %5, null
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpViewable*, %struct._GimpViewable** %old_viewable.addr, align 8
  %7 = bitcast %struct._GimpViewable* %6 to i8*
  %8 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %9 = bitcast %struct._GimpView* %8 to i8*
  %call2 = call i32 @g_signal_handlers_disconnect_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpPalette*, %struct._GimpPaletteView*)* @gimp_palette_view_invalidate to i8*), i8* %9)
  %10 = load %struct._GimpViewable*, %struct._GimpViewable** %new_viewable.addr, align 8
  %tobool3 = icmp ne %struct._GimpViewable* %10, null
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %11 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %12 = bitcast %struct._GimpView* %11 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_widget_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call5)
  %13 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWidget*
  call void @gimp_dnd_color_source_remove(%struct._GtkWidget* %13)
  %14 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %15 = bitcast %struct._GimpView* %14 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_widget_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call7)
  %16 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkWidget*
  call void @gimp_dnd_color_dest_remove(%struct._GtkWidget* %16)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %17 = load i8*, i8** @gimp_palette_view_parent_class, align 8
  %18 = bitcast i8* %17 to %struct._GTypeClass*
  %call10 = call i64 @gimp_view_get_type() #6
  %call11 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %18, i64 %call10)
  %19 = bitcast %struct._GTypeClass* %call11 to %struct._GimpViewClass*
  %set_viewable = getelementptr inbounds %struct._GimpViewClass, %struct._GimpViewClass* %19, i32 0, i32 1
  %20 = load void (%struct._GimpView*, %struct._GimpViewable*, %struct._GimpViewable*)*, void (%struct._GimpView*, %struct._GimpViewable*, %struct._GimpViewable*)** %set_viewable, align 8
  %21 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %22 = load %struct._GimpViewable*, %struct._GimpViewable** %old_viewable.addr, align 8
  %23 = load %struct._GimpViewable*, %struct._GimpViewable** %new_viewable.addr, align 8
  call void %20(%struct._GimpView* %21, %struct._GimpViewable* %22, %struct._GimpViewable* %23)
  %24 = load %struct._GimpViewable*, %struct._GimpViewable** %new_viewable.addr, align 8
  %tobool12 = icmp ne %struct._GimpViewable* %24, null
  br i1 %tobool12, label %if.then.13, label %if.end.26

if.then.13:                                       ; preds = %if.end.9
  %25 = load %struct._GimpViewable*, %struct._GimpViewable** %new_viewable.addr, align 8
  %26 = bitcast %struct._GimpViewable* %25 to i8*
  %27 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %28 = bitcast %struct._GimpView* %27 to i8*
  %call14 = call i64 @g_signal_connect_data(i8* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPalette*, %struct._GimpPaletteView*)* @gimp_palette_view_invalidate to void ()*), i8* %28, void (i8*, %struct._GClosure*)* null, i32 0)
  %29 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %30 = bitcast %struct._GimpView* %29 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_widget_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call15)
  %31 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkWidget*
  %call17 = call i64 @gimp_palette_get_type() #6
  %call18 = call i32 @gimp_dnd_viewable_source_remove(%struct._GtkWidget* %31, i64 %call17)
  %32 = load %struct._GimpViewable*, %struct._GimpViewable** %old_viewable.addr, align 8
  %tobool19 = icmp ne %struct._GimpViewable* %32, null
  br i1 %tobool19, label %if.end.25, label %if.then.20

if.then.20:                                       ; preds = %if.then.13
  %33 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %34 = bitcast %struct._GimpView* %33 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_widget_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call21)
  %35 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkWidget*
  %36 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %37 = bitcast %struct._GimpView* %36 to i8*
  call void @gimp_dnd_color_source_add(%struct._GtkWidget* %35, void (%struct._GtkWidget*, %struct._GimpRGB*, i8*)* @gimp_palette_view_drag_color, i8* %37)
  %38 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %39 = bitcast %struct._GimpView* %38 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_widget_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call23)
  %40 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkWidget*
  %41 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %42 = bitcast %struct._GimpView* %41 to i8*
  call void @gimp_dnd_color_dest_add(%struct._GtkWidget* %40, void (%struct._GtkWidget*, i32, i32, %struct._GimpRGB*, i8*)* @gimp_palette_view_drop_color, i8* %42)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.20, %if.then.13
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end.9
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i32 @gtk_widget_is_drawable(%struct._GtkWidget*) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_renderer_palette_get_type() #2

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gdk_cairo_region(%struct._cairo*, %struct._GdkRegion*) #1

declare void @cairo_clip(%struct._cairo*) #1

declare void @cairo_translate(%struct._cairo*, double, double) #1

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #1

declare void @cairo_stroke_preserve(%struct._cairo*) #1

declare i32 @gimp_cairo_set_focus_line_pattern(%struct._cairo*, %struct._GtkWidget*) #1

declare void @cairo_stroke(%struct._cairo*) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare i32 @gtk_widget_get_can_focus(%struct._GtkWidget*) #1

declare i32 @gtk_widget_has_focus(%struct._GtkWidget*) #1

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpPaletteEntry* @gimp_palette_view_find_entry(%struct._GimpPaletteView* %view, i32 %x, i32 %y) #3 {
entry:
  %retval = alloca %struct._GimpPaletteEntry*, align 8
  %view.addr = alloca %struct._GimpPaletteView*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %palette = alloca %struct._GimpPalette*, align 8
  %renderer = alloca %struct._GimpViewRendererPalette*, align 8
  %entry1 = alloca %struct._GimpPaletteEntry*, align 8
  %col = alloca i32, align 4
  %row = alloca i32, align 4
  store %struct._GimpPaletteView* %view, %struct._GimpPaletteView** %view.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpPaletteEntry* null, %struct._GimpPaletteEntry** %entry1, align 8
  %0 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view.addr, align 8
  %1 = bitcast %struct._GimpPaletteView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpView*
  %renderer3 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %2, i32 0, i32 3
  %3 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer3, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %3, i32 0, i32 3
  %4 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %5 = bitcast %struct._GimpViewable* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_palette_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpPalette*
  store %struct._GimpPalette* %6, %struct._GimpPalette** %palette, align 8
  %7 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view.addr, align 8
  %8 = bitcast %struct._GimpPaletteView* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_view_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpView*
  %renderer8 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %9, i32 0, i32 3
  %10 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer8, align 8
  %11 = bitcast %struct._GimpViewRenderer* %10 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_view_renderer_palette_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call9)
  %12 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpViewRendererPalette*
  store %struct._GimpViewRendererPalette* %12, %struct._GimpViewRendererPalette** %renderer, align 8
  %13 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool = icmp ne %struct._GimpPalette* %13, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %14 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call11 = call i32 @gimp_palette_get_n_colors(%struct._GimpPalette* %14)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._GimpPaletteEntry* null, %struct._GimpPaletteEntry** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %15 = load i32, i32* %x.addr, align 4
  %16 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderer, align 8
  %cell_width = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %16, i32 0, i32 3
  %17 = load i32, i32* %cell_width, align 4
  %div = sdiv i32 %15, %17
  store i32 %div, i32* %col, align 4
  %18 = load i32, i32* %y.addr, align 4
  %19 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderer, align 8
  %cell_height = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %19, i32 0, i32 4
  %20 = load i32, i32* %cell_height, align 4
  %div13 = sdiv i32 %18, %20
  store i32 %div13, i32* %row, align 4
  %21 = load i32, i32* %col, align 4
  %cmp = icmp sge i32 %21, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.end
  %22 = load i32, i32* %col, align 4
  %23 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderer, align 8
  %columns = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %23, i32 0, i32 5
  %24 = load i32, i32* %columns, align 4
  %cmp14 = icmp slt i32 %22, %24
  br i1 %cmp14, label %land.lhs.true.15, label %if.end.22

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %25 = load i32, i32* %row, align 4
  %cmp16 = icmp sge i32 %25, 0
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.22

land.lhs.true.17:                                 ; preds = %land.lhs.true.15
  %26 = load i32, i32* %row, align 4
  %27 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderer, align 8
  %rows = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %27, i32 0, i32 6
  %28 = load i32, i32* %rows, align 4
  %cmp18 = icmp slt i32 %26, %28
  br i1 %cmp18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %land.lhs.true.17
  %29 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %30 = load i32, i32* %row, align 4
  %31 = load %struct._GimpViewRendererPalette*, %struct._GimpViewRendererPalette** %renderer, align 8
  %columns20 = getelementptr inbounds %struct._GimpViewRendererPalette, %struct._GimpViewRendererPalette* %31, i32 0, i32 5
  %32 = load i32, i32* %columns20, align 4
  %mul = mul nsw i32 %30, %32
  %33 = load i32, i32* %col, align 4
  %add = add nsw i32 %mul, %33
  %call21 = call %struct._GimpPaletteEntry* @gimp_palette_get_entry(%struct._GimpPalette* %29, i32 %add)
  store %struct._GimpPaletteEntry* %call21, %struct._GimpPaletteEntry** %entry1, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %land.lhs.true.17, %land.lhs.true.15, %land.lhs.true, %if.end
  %34 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry1, align 8
  store %struct._GimpPaletteEntry* %34, %struct._GimpPaletteEntry** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then
  %35 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %retval
  ret %struct._GimpPaletteEntry* %35
}

declare i32 @gdk_event_triggers_context_menu(%union._GdkEvent*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_palette_get_type() #2

declare i32 @gimp_palette_get_n_colors(%struct._GimpPalette*) #1

declare %struct._GimpPaletteEntry* @gimp_palette_get_entry(%struct._GimpPalette*, i32) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_view_invalidate(%struct._GimpPalette* %palette, %struct._GimpPaletteView* %view) #3 {
entry:
  %palette.addr = alloca %struct._GimpPalette*, align 8
  %view.addr = alloca %struct._GimpPaletteView*, align 8
  store %struct._GimpPalette* %palette, %struct._GimpPalette** %palette.addr, align 8
  store %struct._GimpPaletteView* %view, %struct._GimpPaletteView** %view.addr, align 8
  %0 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view.addr, align 8
  %dnd_entry = getelementptr inbounds %struct._GimpPaletteView, %struct._GimpPaletteView* %0, i32 0, i32 2
  store %struct._GimpPaletteEntry* null, %struct._GimpPaletteEntry** %dnd_entry, align 8
  %1 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view.addr, align 8
  %selected = getelementptr inbounds %struct._GimpPaletteView, %struct._GimpPaletteView* %1, i32 0, i32 1
  %2 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %selected, align 8
  %tobool = icmp ne %struct._GimpPaletteEntry* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %call = call %struct._GList* @gimp_palette_get_colors(%struct._GimpPalette* %3)
  %4 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view.addr, align 8
  %selected1 = getelementptr inbounds %struct._GimpPaletteView, %struct._GimpPaletteView* %4, i32 0, i32 1
  %5 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %selected1, align 8
  %6 = bitcast %struct._GimpPaletteEntry* %5 to i8*
  %call2 = call %struct._GList* @g_list_find(%struct._GList* %call, i8* %6)
  %tobool3 = icmp ne %struct._GList* %call2, null
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view.addr, align 8
  call void @gimp_palette_view_select_entry(%struct._GimpPaletteView* %7, %struct._GimpPaletteEntry* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare void @gimp_dnd_color_source_remove(%struct._GtkWidget*) #1

declare void @gimp_dnd_color_dest_remove(%struct._GtkWidget*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare i32 @gimp_dnd_viewable_source_remove(%struct._GtkWidget*, i64) #1

declare void @gimp_dnd_color_source_add(%struct._GtkWidget*, void (%struct._GtkWidget*, %struct._GimpRGB*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_view_drag_color(%struct._GtkWidget* %widget, %struct._GimpRGB* %color, i8* %data) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %data.addr = alloca i8*, align 8
  %view = alloca %struct._GimpPaletteView*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaletteView*
  store %struct._GimpPaletteView* %2, %struct._GimpPaletteView** %view, align 8
  %3 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view, align 8
  %dnd_entry = getelementptr inbounds %struct._GimpPaletteView, %struct._GimpPaletteView* %3, i32 0, i32 2
  %4 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %dnd_entry, align 8
  %tobool = icmp ne %struct._GimpPaletteEntry* %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %6 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view, align 8
  %dnd_entry2 = getelementptr inbounds %struct._GimpPaletteView, %struct._GimpPaletteView* %6, i32 0, i32 2
  %7 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %dnd_entry2, align 8
  %color3 = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %7, i32 0, i32 0
  %8 = bitcast %struct._GimpRGB* %5 to i8*
  %9 = bitcast %struct._GimpRGB* %color3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_rgba_set(%struct._GimpRGB* %10, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @gimp_dnd_color_dest_add(%struct._GtkWidget*, void (%struct._GtkWidget*, i32, i32, %struct._GimpRGB*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_view_drop_color(%struct._GtkWidget* %widget, i32 %x, i32 %y, %struct._GimpRGB* %color, i8* %data) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %data.addr = alloca i8*, align 8
  %view = alloca %struct._GimpPaletteView*, align 8
  %entry2 = alloca %struct._GimpPaletteEntry*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaletteView*
  store %struct._GimpPaletteView* %2, %struct._GimpPaletteView** %view, align 8
  %3 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view, align 8
  %4 = load i32, i32* %x.addr, align 4
  %5 = load i32, i32* %y.addr, align 4
  %call3 = call %struct._GimpPaletteEntry* @gimp_palette_view_find_entry(%struct._GimpPaletteView* %3, i32 %4, i32 %5)
  store %struct._GimpPaletteEntry* %call3, %struct._GimpPaletteEntry** %entry2, align 8
  %6 = load %struct._GimpPaletteView*, %struct._GimpPaletteView** %view, align 8
  %7 = bitcast %struct._GimpPaletteView* %6 to i8*
  %8 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @view_signals, i32 0, i64 4), align 4
  %9 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry2, align 8
  %10 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %7, i32 %8, i32 0, %struct._GimpPaletteEntry* %9, %struct._GimpRGB* %10)
  ret void
}

declare %struct._GList* @g_list_find(%struct._GList*, i8*) #1

declare %struct._GList* @gimp_palette_get_colors(%struct._GimpPalette*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

declare void @gtk_widget_set_can_focus(%struct._GtkWidget*, i32) #1

declare void @gtk_widget_queue_draw_area(%struct._GtkWidget*, i32, i32, i32, i32) #1

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
