; ModuleID = './libgimpwidgets/gimpcolornotebook.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpColorNotebookClass = type { %struct._GimpColorSelectorClass, void ()*, void ()*, void ()*, void ()* }
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
%struct._GimpColorNotebook = type { %struct._GimpColorSelector, %struct._GtkWidget*, %struct._GList*, %struct._GimpColorSelector* }
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }

@gimp_color_notebook_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"GimpColorNotebook\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_color_notebook_set_has_page = private unnamed_addr constant [33 x i8] c"gimp_color_notebook_set_has_page\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"GIMP_IS_COLOR_NOTEBOOK (notebook)\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"g_type_is_a (page_type, GIMP_TYPE_COLOR_SELECTOR)\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"! g_type_is_a (page_type, GIMP_TYPE_COLOR_NOTEBOOK)\00", align 1
@gimp_color_notebook_parent_class = internal global i8* null, align 8
@GimpColorNotebook_private_offset = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"Notebook\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"gimp-colorselector-notebook\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"tab-border\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"Width of the border around the tab contents\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"tab-icon-size\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Size for icons displayed in the tab\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"tab-icon_size\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"switch-page\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"color-changed\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"channel-changed\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_notebook_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_color_notebook_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_color_notebook_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_color_selector_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 968, void (i8*, i8*)* bitcast (void (i8*)* @gimp_color_notebook_class_intern_init to void (i8*, i8*)*), i32 240, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpColorNotebook*)* @gimp_color_notebook_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_color_notebook_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_color_notebook_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_selector_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_notebook_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_color_notebook_parent_class, align 8
  %1 = load i32, i32* @GimpColorNotebook_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpColorNotebook_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpColorNotebookClass*
  call void @gimp_color_notebook_class_init(%struct._GimpColorNotebookClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_notebook_init(%struct._GimpColorNotebook* %notebook) #3 {
entry:
  %notebook.addr = alloca %struct._GimpColorNotebook*, align 8
  %selector_types = alloca i64*, align 8
  %n_selector_types = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GimpColorNotebook* %notebook, %struct._GimpColorNotebook** %notebook.addr, align 8
  %call = call %struct._GtkWidget* @gtk_notebook_new()
  %0 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %notebook1 = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %0, i32 0, i32 1
  store %struct._GtkWidget* %call, %struct._GtkWidget** %notebook1, align 8
  %1 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %notebook2 = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %1, i32 0, i32 1
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook2, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_notebook_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkNotebook*
  call void @gtk_notebook_popup_enable(%struct._GtkNotebook* %4)
  %5 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %6 = bitcast %struct._GimpColorNotebook* %5 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_box_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkBox*
  %8 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %notebook7 = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %8, i32 0, i32 1
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook7, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %7, %struct._GtkWidget* %9, i32 1, i32 1, i32 0)
  %10 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %notebook8 = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %10, i32 0, i32 1
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook8, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %11)
  %12 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %notebook9 = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %12, i32 0, i32 1
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook9, align 8
  %14 = bitcast %struct._GtkWidget* %13 to i8*
  %15 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %16 = bitcast %struct._GimpColorNotebook* %15 to i8*
  %call10 = call i64 @g_signal_connect_data(i8* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GtkNotebook*, i8*, i32, %struct._GimpColorNotebook*)* @gimp_color_notebook_switch_page to void ()*), i8* %16, void (i8*, %struct._GClosure*)* null, i32 0)
  %17 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %notebook11 = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %17, i32 0, i32 1
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook11, align 8
  %19 = bitcast %struct._GtkWidget* %18 to i8*
  %20 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %21 = bitcast %struct._GimpColorNotebook* %20 to i8*
  %call12 = call i64 @g_signal_connect_data(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkContainer*, %struct._GtkWidget*, %struct._GimpColorNotebook*)* @gimp_color_notebook_remove_selector to void ()*), i8* %21, void (i8*, %struct._GClosure*)* null, i32 0)
  %call13 = call i64 @gimp_color_selector_get_type() #7
  %call14 = call i64* @g_type_children(i64 %call13, i32* %n_selector_types)
  store i64* %call14, i64** %selector_types, align 8
  %22 = load i32, i32* %n_selector_types, align 4
  %cmp = icmp eq i32 %22, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %23 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %notebook15 = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %23, i32 0, i32 1
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook15, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_notebook_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call16)
  %26 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkNotebook*
  call void @gtk_notebook_set_show_tabs(%struct._GtkNotebook* %26, i32 0)
  %27 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %notebook18 = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %27, i32 0, i32 1
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook18, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_notebook_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call19)
  %30 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkNotebook*
  call void @gtk_notebook_set_show_border(%struct._GtkNotebook* %30, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %n_selector_types, align 4
  %cmp21 = icmp ult i32 %31, %32
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %i, align 4
  %idxprom = zext i32 %33 to i64
  %34 = load i64*, i64** %selector_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %34, i64 %idxprom
  %35 = load i64, i64* %arrayidx, align 8
  %call22 = call i64 @gimp_color_notebook_get_type() #7
  %call23 = call i32 @g_type_is_a(i64 %35, i64 %call22)
  %tobool = icmp ne i32 %call23, 0
  br i1 %tobool, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %for.body
  br label %for.inc

if.end.25:                                        ; preds = %for.body
  %36 = load i32, i32* %i, align 4
  %idxprom26 = zext i32 %36 to i64
  %37 = load i64*, i64** %selector_types, align 8
  %arrayidx27 = getelementptr inbounds i64, i64* %37, i64 %idxprom26
  %38 = load i64, i64* %arrayidx27, align 8
  %call28 = call i64 @gimp_color_scales_get_type() #7
  %call29 = call i32 @g_type_is_a(i64 %38, i64 %call28)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.25
  br label %for.inc

if.end.32:                                        ; preds = %if.end.25
  %39 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom33 = zext i32 %40 to i64
  %41 = load i64*, i64** %selector_types, align 8
  %arrayidx34 = getelementptr inbounds i64, i64* %41, i64 %idxprom33
  %42 = load i64, i64* %arrayidx34, align 8
  %call35 = call %struct._GtkWidget* @gimp_color_notebook_add_page(%struct._GimpColorNotebook* %39, i64 %42)
  br label %for.inc

for.inc:                                          ; preds = %if.end.32, %if.then.31, %if.then.24
  %43 = load i32, i32* %i, align 4
  %inc = add i32 %43, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load i64*, i64** %selector_types, align 8
  %45 = bitcast i64* %44 to i8*
  call void @g_free(i8* %45)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_color_notebook_set_has_page(%struct._GimpColorNotebook* %notebook, i64 %page_type, i32 %has_page) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %notebook.addr = alloca %struct._GimpColorNotebook*, align 8
  %page_type.addr = alloca i64, align 8
  %has_page.addr = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %page = alloca %struct._GimpColorSelector*, align 8
  store %struct._GimpColorNotebook* %notebook, %struct._GimpColorNotebook** %notebook.addr, align 8
  store i64 %page_type, i64* %page_type.addr, align 8
  store i32 %has_page, i32* %has_page.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %1 = bitcast %struct._GimpColorNotebook* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_notebook_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_color_notebook_set_has_page, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i64, i64* %page_type.addr, align 8
  %call12 = call i64 @gimp_color_selector_get_type() #7
  %call13 = call i32 @g_type_is_a(i64 %13, i64 %call12)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.11
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_color_notebook_set_has_page, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %14 = load i64, i64* %page_type.addr, align 8
  %call20 = call i64 @gimp_color_notebook_get_type() #7
  %call21 = call i32 @g_type_is_a(i64 %14, i64 %call20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.else.24, label %if.then.23

if.then.23:                                       ; preds = %do.body.19
  br label %if.end.25

if.else.24:                                       ; preds = %do.body.19
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_color_notebook_set_has_page, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.25:                                        ; preds = %if.then.23
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  %15 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %selectors = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %15, i32 0, i32 2
  %16 = load %struct._GList*, %struct._GList** %selectors, align 8
  store %struct._GList* %16, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.26
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool27 = icmp ne %struct._GList* %17, null
  br i1 %tobool27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8
  %20 = bitcast i8* %19 to %struct._GimpColorSelector*
  store %struct._GimpColorSelector* %20, %struct._GimpColorSelector** %page, align 8
  %21 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %page, align 8
  %22 = bitcast %struct._GimpColorSelector* %21 to %struct._GTypeInstance*
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %g_type30 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type30, align 8
  %25 = load i64, i64* %page_type.addr, align 8
  %cmp31 = icmp eq i64 %24, %25
  br i1 %cmp31, label %if.then.32, label %if.end.43

if.then.32:                                       ; preds = %for.body
  %26 = load i32, i32* %has_page.addr, align 4
  %tobool33 = icmp ne i32 %26, 0
  br i1 %tobool33, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %if.then.32
  %27 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %page, align 8
  %28 = bitcast %struct._GimpColorSelector* %27 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_widget_get_type() #7
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call35)
  %29 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkWidget*
  store %struct._GtkWidget* %29, %struct._GtkWidget** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.32
  %30 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %notebook38 = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %30, i32 0, i32 1
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook38, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_container_get_type() #7
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call39)
  %33 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkContainer*
  %34 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %page, align 8
  %35 = bitcast %struct._GimpColorSelector* %34 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_widget_get_type() #7
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call41)
  %36 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkWidget*
  call void @gtk_container_remove(%struct._GtkContainer* %33, %struct._GtkWidget* %36)
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.43:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %37 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool44 = icmp ne %struct._GList* %37, null
  br i1 %tobool44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %38 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %38, i32 0, i32 1
  %39 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %39, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load i32, i32* %has_page.addr, align 4
  %tobool45 = icmp ne i32 %40, 0
  br i1 %tobool45, label %if.end.47, label %if.then.46

if.then.46:                                       ; preds = %for.end
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.47:                                        ; preds = %for.end
  %41 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %42 = load i64, i64* %page_type.addr, align 8
  %call48 = call %struct._GtkWidget* @gimp_color_notebook_add_page(%struct._GimpColorNotebook* %41, i64 %42)
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.47, %if.then.46, %if.end.37, %if.then.34, %if.else.24, %if.else.16, %if.else.9
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %43
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @g_type_is_a(i64, i64) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare void @gtk_container_remove(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_color_notebook_add_page(%struct._GimpColorNotebook* %notebook, i64 %page_type) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %notebook.addr = alloca %struct._GimpColorNotebook*, align 8
  %page_type.addr = alloca i64, align 8
  %selector = alloca %struct._GimpColorSelector*, align 8
  %selector_class = alloca %struct._GimpColorSelectorClass*, align 8
  %page = alloca %struct._GtkWidget*, align 8
  %menu_widget = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  store %struct._GimpColorNotebook* %notebook, %struct._GimpColorNotebook** %notebook.addr, align 8
  store i64 %page_type, i64* %page_type.addr, align 8
  %0 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %1 = bitcast %struct._GimpColorNotebook* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_selector_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorSelector*
  store %struct._GimpColorSelector* %2, %struct._GimpColorSelector** %selector, align 8
  %3 = load i64, i64* %page_type.addr, align 8
  %4 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %4, i32 0, i32 4
  %5 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %5, i32 0, i32 5
  %6 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %channel = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %6, i32 0, i32 6
  %7 = load i32, i32* %channel, align 4
  %call2 = call %struct._GtkWidget* @gimp_color_selector_new(i64 %3, %struct._GimpRGB* %rgb, %struct._GimpHSV* %hsv, i32 %7)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %page, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %tobool = icmp ne %struct._GtkWidget* %8, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %12 = bitcast %struct._GTypeClass* %11 to %struct._GimpColorSelectorClass*
  store %struct._GimpColorSelectorClass* %12, %struct._GimpColorSelectorClass** %selector_class, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_color_selector_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call3)
  %15 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpColorSelector*
  %16 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %17 = bitcast %struct._GimpColorNotebook* %16 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_color_selector_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call5)
  %18 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpColorSelector*
  %show_alpha = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %18, i32 0, i32 3
  %19 = load i32, i32* %show_alpha, align 4
  call void @gimp_color_selector_set_show_alpha(%struct._GimpColorSelector* %15, i32 %19)
  %call7 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 4)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %menu_widget, align 8
  %20 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %stock_id = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %20, i32 0, i32 3
  %21 = load i8*, i8** %stock_id, align 8
  %call8 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* %21, i32 1)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %image, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %menu_widget, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_box_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call9)
  %24 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkBox*
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %24, %struct._GtkWidget* %25, i32 0, i32 0, i32 0)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %26)
  %27 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %name = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %27, i32 0, i32 1
  %28 = load i8*, i8** %name, align 8
  %call11 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* %28) #5
  %call12 = call %struct._GtkWidget* @gtk_label_new(i8* %call11)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %label, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %menu_widget, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_box_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call13)
  %31 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBox*
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %31, %struct._GtkWidget* %32, i32 0, i32 0, i32 0)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %33)
  %34 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %stock_id15 = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %34, i32 0, i32 3
  %35 = load i8*, i8** %stock_id15, align 8
  %call16 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* %35, i32 4)
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %image, align 8
  %36 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %notebook17 = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %36, i32 0, i32 1
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook17, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_notebook_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call18)
  %39 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkNotebook*
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %menu_widget, align 8
  %call20 = call i32 @gtk_notebook_append_page_menu(%struct._GtkNotebook* %39, %struct._GtkWidget* %40, %struct._GtkWidget* %41, %struct._GtkWidget* %42)
  %43 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %cur_page = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %43, i32 0, i32 3
  %44 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %cur_page, align 8
  %tobool21 = icmp ne %struct._GimpColorSelector* %44, null
  br i1 %tobool21, label %if.end.26, label %if.then.22

if.then.22:                                       ; preds = %if.end
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_color_selector_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call23)
  %47 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpColorSelector*
  %48 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %cur_page25 = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %48, i32 0, i32 3
  store %struct._GimpColorSelector* %47, %struct._GimpColorSelector** %cur_page25, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %if.end
  %49 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %selectors = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %49, i32 0, i32 2
  %50 = load %struct._GList*, %struct._GList** %selectors, align 8
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %52 = bitcast %struct._GtkWidget* %51 to i8*
  %call27 = call %struct._GList* @g_list_append(%struct._GList* %50, i8* %52)
  %53 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %selectors28 = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %53, i32 0, i32 2
  store %struct._GList* %call27, %struct._GList** %selectors28, align 8
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %54)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %56 = bitcast %struct._GtkWidget* %55 to i8*
  %57 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %58 = bitcast %struct._GimpColorNotebook* %57 to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*, %struct._GimpColorNotebook*)* @gimp_color_notebook_color_changed to void ()*), i8* %58, void (i8*, %struct._GClosure*)* null, i32 0)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %60 = bitcast %struct._GtkWidget* %59 to i8*
  %61 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %62 = bitcast %struct._GimpColorNotebook* %61 to i8*
  %call30 = call i64 @g_signal_connect_data(i8* %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorSelector*, i32, %struct._GimpColorNotebook*)* @gimp_color_notebook_channel_changed to void ()*), i8* %62, void (i8*, %struct._GClosure*)* null, i32 0)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  store %struct._GtkWidget* %63, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %64
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_notebook_class_init(%struct._GimpColorNotebookClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpColorNotebookClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  %selector_class = alloca %struct._GimpColorSelectorClass*, align 8
  store %struct._GimpColorNotebookClass* %klass, %struct._GimpColorNotebookClass** %klass.addr, align 8
  %0 = load %struct._GimpColorNotebookClass*, %struct._GimpColorNotebookClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpColorNotebookClass* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %2, %struct._GtkWidgetClass** %widget_class, align 8
  %3 = load %struct._GimpColorNotebookClass*, %struct._GimpColorNotebookClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpColorNotebookClass* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_color_selector_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpColorSelectorClass*
  store %struct._GimpColorSelectorClass* %5, %struct._GimpColorSelectorClass** %selector_class, align 8
  %6 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %6, i32 0, i32 17
  store void (%struct._GtkWidget*, %struct._GtkStyle*)* @gimp_color_notebook_style_set, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %7 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %name = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %7, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8** %name, align 8
  %8 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %help_id = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %8, i32 0, i32 2
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0), i8** %help_id, align 8
  %9 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %set_toggles_visible = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %9, i32 0, i32 4
  store void (%struct._GimpColorSelector*, i32)* @gimp_color_notebook_togg_visible, void (%struct._GimpColorSelector*, i32)** %set_toggles_visible, align 8
  %10 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %set_toggles_sensitive = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %10, i32 0, i32 5
  store void (%struct._GimpColorSelector*, i32)* @gimp_color_notebook_togg_sensitive, void (%struct._GimpColorSelector*, i32)** %set_toggles_sensitive, align 8
  %11 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %set_show_alpha = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %11, i32 0, i32 6
  store void (%struct._GimpColorSelector*, i32)* @gimp_color_notebook_set_show_alpha, void (%struct._GimpColorSelector*, i32)** %set_show_alpha, align 8
  %12 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %set_color = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %12, i32 0, i32 7
  store void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)* @gimp_color_notebook_set_color, void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)** %set_color, align 8
  %13 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %set_channel = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %13, i32 0, i32 8
  store void (%struct._GimpColorSelector*, i32)* @gimp_color_notebook_set_channel, void (%struct._GimpColorSelector*, i32)** %set_channel, align 8
  %14 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %set_config = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %14, i32 0, i32 11
  store void (%struct._GimpColorSelector*, %struct._GimpColorConfig*)* @gimp_color_notebook_set_config, void (%struct._GimpColorSelector*, %struct._GimpColorConfig*)** %set_config, align 8
  %15 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 1)
  call void @gtk_widget_class_install_style_property(%struct._GtkWidgetClass* %15, %struct._GParamSpec* %call4)
  %16 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %call5 = call i64 @gtk_icon_size_get_type() #7
  %call6 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i32 0, i32 0), i64 %call5, i32 4, i32 1)
  call void @gtk_widget_class_install_style_property(%struct._GtkWidgetClass* %16, %struct._GParamSpec* %call6)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_notebook_style_set(%struct._GtkWidget* %widget, %struct._GtkStyle* %prev_style) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %prev_style.addr = alloca %struct._GtkStyle*, align 8
  %notebook = alloca %struct._GimpColorNotebook*, align 8
  %list = alloca %struct._GList*, align 8
  %tab_border = alloca i32, align 4
  %icon_size = alloca i32, align 4
  %selector_class = alloca %struct._GimpColorSelectorClass*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkStyle* %prev_style, %struct._GtkStyle** %prev_style.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_notebook_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorNotebook*
  store %struct._GimpColorNotebook* %2, %struct._GimpColorNotebook** %notebook, align 8
  %3 = load i8*, i8** @gimp_color_notebook_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gtk_widget_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GtkWidgetClass*
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %5, i32 0, i32 17
  %6 = load void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %tobool = icmp ne void (%struct._GtkWidget*, %struct._GtkStyle*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_color_notebook_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call4 = call i64 @gtk_widget_get_type() #7
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 %call4)
  %9 = bitcast %struct._GTypeClass* %call5 to %struct._GtkWidgetClass*
  %style_set6 = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %9, i32 0, i32 17
  %10 = load void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set6, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %12 = load %struct._GtkStyle*, %struct._GtkStyle** %prev_style.addr, align 8
  call void %10(%struct._GtkWidget* %11, %struct._GtkStyle* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32* %tab_border, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32* %icon_size, i8* null)
  %14 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook, align 8
  %notebook7 = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %14, i32 0, i32 1
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook7, align 8
  %16 = bitcast %struct._GtkWidget* %15 to i8*
  %17 = load i32, i32* %tab_border, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 %17, i8* null)
  %18 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook, align 8
  %selectors = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %18, i32 0, i32 2
  %19 = load %struct._GList*, %struct._GList** %selectors, align 8
  store %struct._GList* %19, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end
  %20 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool8 = icmp ne %struct._GList* %20, null
  br i1 %tobool8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %21, i32 0, i32 0
  %22 = load i8*, i8** %data, align 8
  %23 = bitcast i8* %22 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %25 = bitcast %struct._GTypeClass* %24 to %struct._GimpColorSelectorClass*
  store %struct._GimpColorSelectorClass* %25, %struct._GimpColorSelectorClass** %selector_class, align 8
  %26 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %stock_id = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %26, i32 0, i32 3
  %27 = load i8*, i8** %stock_id, align 8
  %28 = load i32, i32* %icon_size, align 4
  %call9 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* %27, i32 %28)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %image, align 8
  %29 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook, align 8
  %notebook10 = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %29, i32 0, i32 1
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook10, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_notebook_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call11)
  %32 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkNotebook*
  %33 = load %struct._GList*, %struct._GList** %list, align 8
  %data13 = getelementptr inbounds %struct._GList, %struct._GList* %33, i32 0, i32 0
  %34 = load i8*, i8** %data13, align 8
  %35 = bitcast i8* %34 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_widget_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call14)
  %36 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWidget*
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_notebook_set_tab_label(%struct._GtkNotebook* %32, %struct._GtkWidget* %36, %struct._GtkWidget* %37)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool16 = icmp ne %struct._GList* %38, null
  br i1 %tobool16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %39 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %39, i32 0, i32 1
  %40 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %40, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_notebook_togg_visible(%struct._GimpColorSelector* %selector, i32 %visible) #3 {
entry:
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  %visible.addr = alloca i32, align 4
  %notebook = alloca %struct._GimpColorNotebook*, align 8
  %list = alloca %struct._GList*, align 8
  %child = alloca %struct._GimpColorSelector*, align 8
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  store i32 %visible, i32* %visible.addr, align 4
  %0 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpColorSelector* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_notebook_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorNotebook*
  store %struct._GimpColorNotebook* %2, %struct._GimpColorNotebook** %notebook, align 8
  %3 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook, align 8
  %selectors = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %3, i32 0, i32 2
  %4 = load %struct._GList*, %struct._GList** %selectors, align 8
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
  %8 = bitcast i8* %7 to %struct._GimpColorSelector*
  store %struct._GimpColorSelector* %8, %struct._GimpColorSelector** %child, align 8
  %9 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %child, align 8
  %10 = load i32, i32* %visible.addr, align 4
  call void @gimp_color_selector_set_toggles_visible(%struct._GimpColorSelector* %9, i32 %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool2 = icmp ne %struct._GList* %11, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 1
  %13 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %13, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_notebook_togg_sensitive(%struct._GimpColorSelector* %selector, i32 %sensitive) #3 {
entry:
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  %sensitive.addr = alloca i32, align 4
  %notebook = alloca %struct._GimpColorNotebook*, align 8
  %list = alloca %struct._GList*, align 8
  %child = alloca %struct._GimpColorSelector*, align 8
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  store i32 %sensitive, i32* %sensitive.addr, align 4
  %0 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpColorSelector* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_notebook_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorNotebook*
  store %struct._GimpColorNotebook* %2, %struct._GimpColorNotebook** %notebook, align 8
  %3 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook, align 8
  %selectors = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %3, i32 0, i32 2
  %4 = load %struct._GList*, %struct._GList** %selectors, align 8
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
  %8 = bitcast i8* %7 to %struct._GimpColorSelector*
  store %struct._GimpColorSelector* %8, %struct._GimpColorSelector** %child, align 8
  %9 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %child, align 8
  %10 = load i32, i32* %sensitive.addr, align 4
  call void @gimp_color_selector_set_toggles_sensitive(%struct._GimpColorSelector* %9, i32 %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool2 = icmp ne %struct._GList* %11, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 1
  %13 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %13, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_notebook_set_show_alpha(%struct._GimpColorSelector* %selector, i32 %show_alpha) #3 {
entry:
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  %show_alpha.addr = alloca i32, align 4
  %notebook = alloca %struct._GimpColorNotebook*, align 8
  %list = alloca %struct._GList*, align 8
  %child = alloca %struct._GimpColorSelector*, align 8
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  store i32 %show_alpha, i32* %show_alpha.addr, align 4
  %0 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpColorSelector* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_notebook_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorNotebook*
  store %struct._GimpColorNotebook* %2, %struct._GimpColorNotebook** %notebook, align 8
  %3 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook, align 8
  %selectors = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %3, i32 0, i32 2
  %4 = load %struct._GList*, %struct._GList** %selectors, align 8
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
  %8 = bitcast i8* %7 to %struct._GimpColorSelector*
  store %struct._GimpColorSelector* %8, %struct._GimpColorSelector** %child, align 8
  %9 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %child, align 8
  %10 = load i32, i32* %show_alpha.addr, align 4
  call void @gimp_color_selector_set_show_alpha(%struct._GimpColorSelector* %9, i32 %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool2 = icmp ne %struct._GList* %11, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 1
  %13 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %13, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_notebook_set_color(%struct._GimpColorSelector* %selector, %struct._GimpRGB* %rgb, %struct._GimpHSV* %hsv) #3 {
entry:
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %hsv.addr = alloca %struct._GimpHSV*, align 8
  %notebook = alloca %struct._GimpColorNotebook*, align 8
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store %struct._GimpHSV* %hsv, %struct._GimpHSV** %hsv.addr, align 8
  %0 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpColorSelector* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_notebook_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorNotebook*
  store %struct._GimpColorNotebook* %2, %struct._GimpColorNotebook** %notebook, align 8
  %3 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook, align 8
  %cur_page = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %3, i32 0, i32 3
  %4 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %cur_page, align 8
  %5 = bitcast %struct._GimpColorSelector* %4 to i8*
  %6 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook, align 8
  %7 = bitcast %struct._GimpColorNotebook* %6 to i8*
  %call2 = call i32 @g_signal_handlers_block_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*, %struct._GimpColorNotebook*)* @gimp_color_notebook_color_changed to i8*), i8* %7)
  %8 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook, align 8
  %cur_page3 = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %8, i32 0, i32 3
  %9 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %cur_page3, align 8
  %10 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %11 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  call void @gimp_color_selector_set_color(%struct._GimpColorSelector* %9, %struct._GimpRGB* %10, %struct._GimpHSV* %11)
  %12 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook, align 8
  %cur_page4 = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %12, i32 0, i32 3
  %13 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %cur_page4, align 8
  %14 = bitcast %struct._GimpColorSelector* %13 to i8*
  %15 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook, align 8
  %16 = bitcast %struct._GimpColorNotebook* %15 to i8*
  %call5 = call i32 @g_signal_handlers_unblock_matched(i8* %14, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*, %struct._GimpColorNotebook*)* @gimp_color_notebook_color_changed to i8*), i8* %16)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_notebook_set_channel(%struct._GimpColorSelector* %selector, i32 %channel) #3 {
entry:
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  %channel.addr = alloca i32, align 4
  %notebook = alloca %struct._GimpColorNotebook*, align 8
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  %0 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpColorSelector* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_notebook_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorNotebook*
  store %struct._GimpColorNotebook* %2, %struct._GimpColorNotebook** %notebook, align 8
  %3 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook, align 8
  %cur_page = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %3, i32 0, i32 3
  %4 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %cur_page, align 8
  %5 = bitcast %struct._GimpColorSelector* %4 to i8*
  %6 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook, align 8
  %7 = bitcast %struct._GimpColorNotebook* %6 to i8*
  %call2 = call i32 @g_signal_handlers_block_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpColorSelector*, i32, %struct._GimpColorNotebook*)* @gimp_color_notebook_channel_changed to i8*), i8* %7)
  %8 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook, align 8
  %cur_page3 = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %8, i32 0, i32 3
  %9 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %cur_page3, align 8
  %10 = load i32, i32* %channel.addr, align 4
  call void @gimp_color_selector_set_channel(%struct._GimpColorSelector* %9, i32 %10)
  %11 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook, align 8
  %cur_page4 = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %11, i32 0, i32 3
  %12 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %cur_page4, align 8
  %13 = bitcast %struct._GimpColorSelector* %12 to i8*
  %14 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook, align 8
  %15 = bitcast %struct._GimpColorNotebook* %14 to i8*
  %call5 = call i32 @g_signal_handlers_unblock_matched(i8* %13, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpColorSelector*, i32, %struct._GimpColorNotebook*)* @gimp_color_notebook_channel_changed to i8*), i8* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_notebook_set_config(%struct._GimpColorSelector* %selector, %struct._GimpColorConfig* %config) #3 {
entry:
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  %config.addr = alloca %struct._GimpColorConfig*, align 8
  %notebook = alloca %struct._GimpColorNotebook*, align 8
  %list = alloca %struct._GList*, align 8
  %child = alloca %struct._GimpColorSelector*, align 8
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  store %struct._GimpColorConfig* %config, %struct._GimpColorConfig** %config.addr, align 8
  %0 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpColorSelector* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_notebook_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorNotebook*
  store %struct._GimpColorNotebook* %2, %struct._GimpColorNotebook** %notebook, align 8
  %3 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook, align 8
  %selectors = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %3, i32 0, i32 2
  %4 = load %struct._GList*, %struct._GList** %selectors, align 8
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
  %8 = bitcast i8* %7 to %struct._GimpColorSelector*
  store %struct._GimpColorSelector* %8, %struct._GimpColorSelector** %child, align 8
  %9 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %child, align 8
  %10 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %config.addr, align 8
  call void @gimp_color_selector_set_config(%struct._GimpColorSelector* %9, %struct._GimpColorConfig* %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool2 = icmp ne %struct._GList* %11, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 1
  %13 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %13, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @gtk_widget_class_install_style_property(%struct._GtkWidgetClass*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_icon_size_get_type() #2

declare void @gtk_widget_style_get(%struct._GtkWidget*, i8*, ...) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

declare void @gtk_notebook_set_tab_label(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_notebook_get_type() #2

declare void @gimp_color_selector_set_toggles_visible(%struct._GimpColorSelector*, i32) #1

declare void @gimp_color_selector_set_toggles_sensitive(%struct._GimpColorSelector*, i32) #1

declare void @gimp_color_selector_set_show_alpha(%struct._GimpColorSelector*, i32) #1

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_notebook_color_changed(%struct._GimpColorSelector* %page, %struct._GimpRGB* %rgb, %struct._GimpHSV* %hsv, %struct._GimpColorNotebook* %notebook) #3 {
entry:
  %page.addr = alloca %struct._GimpColorSelector*, align 8
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %hsv.addr = alloca %struct._GimpHSV*, align 8
  %notebook.addr = alloca %struct._GimpColorNotebook*, align 8
  %selector = alloca %struct._GimpColorSelector*, align 8
  store %struct._GimpColorSelector* %page, %struct._GimpColorSelector** %page.addr, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store %struct._GimpHSV* %hsv, %struct._GimpHSV** %hsv.addr, align 8
  store %struct._GimpColorNotebook* %notebook, %struct._GimpColorNotebook** %notebook.addr, align 8
  %0 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %1 = bitcast %struct._GimpColorNotebook* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_selector_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorSelector*
  store %struct._GimpColorSelector* %2, %struct._GimpColorSelector** %selector, align 8
  %3 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb2 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %3, i32 0, i32 4
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %5 = bitcast %struct._GimpRGB* %rgb2 to i8*
  %6 = bitcast %struct._GimpRGB* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  %7 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv3 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %7, i32 0, i32 5
  %8 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %9 = bitcast %struct._GimpHSV* %hsv3 to i8*
  %10 = bitcast %struct._GimpHSV* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  %11 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  call void @gimp_color_selector_color_changed(%struct._GimpColorSelector* %11)
  ret void
}

declare void @gimp_color_selector_set_color(%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*) #1

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @gimp_color_selector_color_changed(%struct._GimpColorSelector*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_notebook_channel_changed(%struct._GimpColorSelector* %page, i32 %channel, %struct._GimpColorNotebook* %notebook) #3 {
entry:
  %page.addr = alloca %struct._GimpColorSelector*, align 8
  %channel.addr = alloca i32, align 4
  %notebook.addr = alloca %struct._GimpColorNotebook*, align 8
  %selector = alloca %struct._GimpColorSelector*, align 8
  store %struct._GimpColorSelector* %page, %struct._GimpColorSelector** %page.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  store %struct._GimpColorNotebook* %notebook, %struct._GimpColorNotebook** %notebook.addr, align 8
  %0 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %1 = bitcast %struct._GimpColorNotebook* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_selector_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorSelector*
  store %struct._GimpColorSelector* %2, %struct._GimpColorSelector** %selector, align 8
  %3 = load i32, i32* %channel.addr, align 4
  %4 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %channel2 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %4, i32 0, i32 6
  store i32 %3, i32* %channel2, align 4
  %5 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  call void @gimp_color_selector_channel_changed(%struct._GimpColorSelector* %5)
  ret void
}

declare void @gimp_color_selector_set_channel(%struct._GimpColorSelector*, i32) #1

declare void @gimp_color_selector_channel_changed(%struct._GimpColorSelector*) #1

declare void @gimp_color_selector_set_config(%struct._GimpColorSelector*, %struct._GimpColorConfig*) #1

declare %struct._GtkWidget* @gtk_notebook_new() #1

declare void @gtk_notebook_popup_enable(%struct._GtkNotebook*) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_notebook_switch_page(%struct._GtkNotebook* %gtk_notebook, i8* %page, i32 %page_num, %struct._GimpColorNotebook* %notebook) #3 {
entry:
  %gtk_notebook.addr = alloca %struct._GtkNotebook*, align 8
  %page.addr = alloca i8*, align 8
  %page_num.addr = alloca i32, align 4
  %notebook.addr = alloca %struct._GimpColorNotebook*, align 8
  %selector = alloca %struct._GimpColorSelector*, align 8
  %page_widget = alloca %struct._GtkWidget*, align 8
  store %struct._GtkNotebook* %gtk_notebook, %struct._GtkNotebook** %gtk_notebook.addr, align 8
  store i8* %page, i8** %page.addr, align 8
  store i32 %page_num, i32* %page_num.addr, align 4
  store %struct._GimpColorNotebook* %notebook, %struct._GimpColorNotebook** %notebook.addr, align 8
  %0 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %1 = bitcast %struct._GimpColorNotebook* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_selector_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorSelector*
  store %struct._GimpColorSelector* %2, %struct._GimpColorSelector** %selector, align 8
  %3 = load %struct._GtkNotebook*, %struct._GtkNotebook** %gtk_notebook.addr, align 8
  %4 = load i32, i32* %page_num.addr, align 4
  %call2 = call %struct._GtkWidget* @gtk_notebook_get_nth_page(%struct._GtkNotebook* %3, i32 %4)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %page_widget, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %page_widget, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_color_selector_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpColorSelector*
  %8 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %cur_page = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %8, i32 0, i32 3
  store %struct._GimpColorSelector* %7, %struct._GimpColorSelector** %cur_page, align 8
  %9 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %cur_page5 = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %9, i32 0, i32 3
  %10 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %cur_page5, align 8
  %11 = bitcast %struct._GimpColorSelector* %10 to i8*
  %12 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %13 = bitcast %struct._GimpColorNotebook* %12 to i8*
  %call6 = call i32 @g_signal_handlers_block_matched(i8* %11, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*, %struct._GimpColorNotebook*)* @gimp_color_notebook_color_changed to i8*), i8* %13)
  %14 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %cur_page7 = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %14, i32 0, i32 3
  %15 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %cur_page7, align 8
  %16 = bitcast %struct._GimpColorSelector* %15 to i8*
  %17 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %18 = bitcast %struct._GimpColorNotebook* %17 to i8*
  %call8 = call i32 @g_signal_handlers_block_matched(i8* %16, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpColorSelector*, i32, %struct._GimpColorNotebook*)* @gimp_color_notebook_channel_changed to i8*), i8* %18)
  %19 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %cur_page9 = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %19, i32 0, i32 3
  %20 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %cur_page9, align 8
  %21 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %21, i32 0, i32 4
  %22 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %22, i32 0, i32 5
  call void @gimp_color_selector_set_color(%struct._GimpColorSelector* %20, %struct._GimpRGB* %rgb, %struct._GimpHSV* %hsv)
  %23 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %cur_page10 = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %23, i32 0, i32 3
  %24 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %cur_page10, align 8
  %25 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %channel = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %25, i32 0, i32 6
  %26 = load i32, i32* %channel, align 4
  call void @gimp_color_selector_set_channel(%struct._GimpColorSelector* %24, i32 %26)
  %27 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %cur_page11 = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %27, i32 0, i32 3
  %28 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %cur_page11, align 8
  %29 = bitcast %struct._GimpColorSelector* %28 to i8*
  %30 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %31 = bitcast %struct._GimpColorNotebook* %30 to i8*
  %call12 = call i32 @g_signal_handlers_unblock_matched(i8* %29, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*, %struct._GimpColorNotebook*)* @gimp_color_notebook_color_changed to i8*), i8* %31)
  %32 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %cur_page13 = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %32, i32 0, i32 3
  %33 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %cur_page13, align 8
  %34 = bitcast %struct._GimpColorSelector* %33 to i8*
  %35 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %36 = bitcast %struct._GimpColorNotebook* %35 to i8*
  %call14 = call i32 @g_signal_handlers_unblock_matched(i8* %34, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpColorSelector*, i32, %struct._GimpColorNotebook*)* @gimp_color_notebook_channel_changed to i8*), i8* %36)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_notebook_remove_selector(%struct._GtkContainer* %container, %struct._GtkWidget* %widget, %struct._GimpColorNotebook* %notebook) #3 {
entry:
  %container.addr = alloca %struct._GtkContainer*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %notebook.addr = alloca %struct._GimpColorNotebook*, align 8
  store %struct._GtkContainer* %container, %struct._GtkContainer** %container.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpColorNotebook* %notebook, %struct._GimpColorNotebook** %notebook.addr, align 8
  %0 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %selectors = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %0, i32 0, i32 2
  %1 = load %struct._GList*, %struct._GList** %selectors, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to i8*
  %call = call %struct._GList* @g_list_remove(%struct._GList* %1, i8* %3)
  %4 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %selectors1 = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %4, i32 0, i32 2
  store %struct._GList* %call, %struct._GList** %selectors1, align 8
  %5 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %selectors2 = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %5, i32 0, i32 2
  %6 = load %struct._GList*, %struct._GList** %selectors2, align 8
  %tobool = icmp ne %struct._GList* %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook.addr, align 8
  %cur_page = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %7, i32 0, i32 3
  store %struct._GimpColorSelector* null, %struct._GimpColorSelector** %cur_page, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i64* @g_type_children(i64, i32*) #1

declare void @gtk_notebook_set_show_tabs(%struct._GtkNotebook*, i32) #1

declare void @gtk_notebook_set_show_border(%struct._GtkNotebook*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_scales_get_type() #2

declare void @g_free(i8*) #1

declare %struct._GtkWidget* @gtk_notebook_get_nth_page(%struct._GtkNotebook*, i32) #1

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

declare %struct._GtkWidget* @gimp_color_selector_new(i64, %struct._GimpRGB*, %struct._GimpHSV*, i32) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #6

declare i32 @gtk_notebook_append_page_menu(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
