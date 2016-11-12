; ModuleID = './app/widgets/gimpsizebox.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpSizeBoxClass = type { %struct._GtkBoxClass }
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
%struct._GimpSizeBox = type { %struct._GtkBox, %struct._GtkSizeGroup*, i32, i32, i32, double, double, i32, i32 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkSizeGroup = type { %struct._GObject, %struct._GSList*, i8, i8, %struct._GtkRequisition }
%struct._GtkOrientable = type opaque
%struct._GimpSizeBoxPrivate = type { %struct._GimpSizeEntry*, %struct._GimpChainButton*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpChainButton = type { %struct._GtkTable, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkLabelSelectionInfo = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_size_box_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"GimpSizeBox\00", align 1
@gimp_size_box_parent_class = internal global i8* null, align 8
@GimpSizeBox_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"unit\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"xresolution\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"yresolution\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"resolution-unit\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"keep-aspect\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"edit-resolution\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"_Width:\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"H_eight:\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"chainbutton\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"constrains-ratio\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"pixels/%a\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"_X resolution:\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"_Y resolution:\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"%d \C3\97 %d pixel\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"%d \C3\97 %d pixels\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"%d \C3\97 %d ppi\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"%d ppi\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"gimpsizebox.c\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_size_box_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_size_box_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_size_box_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_box_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 824, void (i8*, i8*)* bitcast (void (i8*)* @gimp_size_box_class_intern_init to void (i8*, i8*)*), i32 176, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpSizeBox*)* @gimp_size_box_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_size_box_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_size_box_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_size_box_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_size_box_parent_class, align 8
  %1 = load i32, i32* @GimpSizeBox_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpSizeBox_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpSizeBoxClass*
  call void @gimp_size_box_class_init(%struct._GimpSizeBoxClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_size_box_init(%struct._GimpSizeBox* %box) #3 {
entry:
  %box.addr = alloca %struct._GimpSizeBox*, align 8
  store %struct._GimpSizeBox* %box, %struct._GimpSizeBox** %box.addr, align 8
  %0 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box.addr, align 8
  %1 = bitcast %struct._GimpSizeBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_orientable_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkOrientable*
  call void @gtk_orientable_set_orientation(%struct._GtkOrientable* %2, i32 1)
  %3 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box.addr, align 8
  %4 = bitcast %struct._GimpSizeBox* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_box_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkBox*
  call void @gtk_box_set_spacing(%struct._GtkBox* %5, i32 6)
  %call4 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  %6 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box.addr, align 8
  %size_group = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %6, i32 0, i32 1
  store %struct._GtkSizeGroup* %call4, %struct._GtkSizeGroup** %size_group, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_size_box_class_init(%struct._GimpSizeBoxClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpSizeBoxClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpSizeBoxClass* %klass, %struct._GimpSizeBoxClass** %klass.addr, align 8
  %0 = load %struct._GimpSizeBoxClass*, %struct._GimpSizeBoxClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpSizeBoxClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_size_box_constructed, void (%struct._GObject*)** %constructed, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_size_box_dispose, void (%struct._GObject*)** %dispose, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_size_box_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_size_box_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %8 = bitcast %struct._GObjectClass* %7 to i8*
  call void @g_type_class_add_private(i8* %8, i64 32)
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, i32 1, i32 262144, i32 256, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 1, %struct._GParamSpec* %call1)
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call2 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null, i32 1, i32 262144, i32 256, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 2, %struct._GParamSpec* %call2)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_unit(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i32 1, i32 1, i32 0, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 3, %struct._GParamSpec* %call3)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, double 5.000000e-03, double 6.553600e+04, double 7.200000e+01, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 4, %struct._GParamSpec* %call4)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, double 5.000000e-03, double 6.553600e+04, double 7.200000e+01, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 5, %struct._GParamSpec* %call5)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @gimp_param_spec_unit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i32 0, i32 0, i32 1, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 6, %struct._GParamSpec* %call6)
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i32 1, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 7, %struct._GParamSpec* %call7)
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, i32 0, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %16, i32 8, %struct._GParamSpec* %call8)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_size_box_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %box = alloca %struct._GimpSizeBox*, align 8
  %priv = alloca %struct._GimpSizeBoxPrivate*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %entry4 = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %children = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %chain_active = alloca i32, align 4
  %__inst103 = alloca %struct._GTypeInstance*, align 8
  %__t106 = alloca i64, align 8
  %__r109 = alloca i32, align 4
  %tmp125 = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_size_box_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSizeBox*
  store %struct._GimpSizeBox* %2, %struct._GimpSizeBox** %box, align 8
  %3 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %4 = bitcast %struct._GimpSizeBox* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_size_box_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpSizeBoxPrivate*
  store %struct._GimpSizeBoxPrivate* %5, %struct._GimpSizeBoxPrivate** %priv, align 8
  %6 = load i8*, i8** @gimp_size_box_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 80)
  %8 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 9
  %9 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i8*, i8** @gimp_size_box_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 80)
  %12 = bitcast %struct._GTypeClass* %call6 to %struct._GObjectClass*
  %constructed7 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 9
  %13 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed7, align 8
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %13(%struct._GObject* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call8 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %hbox, align 8
  %15 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %16 = bitcast %struct._GimpSizeBox* %15 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_box_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call9)
  %17 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkBox*
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %17, %struct._GtkWidget* %18, i32 0, i32 0, i32 0)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %19)
  %20 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %unit = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %20, i32 0, i32 4
  %21 = load i32, i32* %unit, align 4
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0)) #6
  %22 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %width = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %22, i32 0, i32 2
  %23 = load i32, i32* %width, align 4
  %conv = sitofp i32 %23 to double
  %24 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %xresolution = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %24, i32 0, i32 5
  %25 = load double, double* %xresolution, align 8
  %26 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %width12 = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %26, i32 0, i32 2
  %27 = load i32, i32* %width12, align 4
  %conv13 = sitofp i32 %27 to double
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0)) #6
  %28 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %height = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %28, i32 0, i32 3
  %29 = load i32, i32* %height, align 4
  %conv15 = sitofp i32 %29 to double
  %30 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %yresolution = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %30, i32 0, i32 6
  %31 = load double, double* %yresolution, align 8
  %32 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %height16 = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %32, i32 0, i32 3
  %33 = load i32, i32* %height16, align 4
  %conv17 = sitofp i32 %33 to double
  %call18 = call %struct._GtkWidget* @gimp_coordinates_new(i32 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 1, i32 1, i32 8, i32 1, i32 1, i32 1, i8* %call11, double %conv, double %25, double 1.000000e+00, double 2.621440e+05, double 0.000000e+00, double %conv13, i8* %call14, double %conv15, double %31, double 1.000000e+00, double 2.621440e+05, double 0.000000e+00, double %conv17)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %entry4, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %entry4, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_size_entry_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call19)
  %36 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpSizeEntry*
  %37 = load %struct._GimpSizeBoxPrivate*, %struct._GimpSizeBoxPrivate** %priv, align 8
  %size_entry = getelementptr inbounds %struct._GimpSizeBoxPrivate, %struct._GimpSizeBoxPrivate* %37, i32 0, i32 0
  store %struct._GimpSizeEntry* %36, %struct._GimpSizeEntry** %size_entry, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %entry4, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_size_entry_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call21)
  %40 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpSizeEntry*
  %41 = bitcast %struct._GimpSizeEntry* %40 to %struct._GTypeInstance*
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 80)
  %42 = bitcast %struct._GTypeInstance* %call23 to %struct._GObject*
  %call24 = call i8* @g_object_get_data(%struct._GObject* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  %43 = bitcast i8* %call24 to %struct._GimpChainButton*
  %44 = load %struct._GimpSizeBoxPrivate*, %struct._GimpSizeBoxPrivate** %priv, align 8
  %size_chain = getelementptr inbounds %struct._GimpSizeBoxPrivate, %struct._GimpSizeBoxPrivate* %44, i32 0, i32 1
  store %struct._GimpChainButton* %43, %struct._GimpChainButton** %size_chain, align 8
  %45 = load %struct._GimpSizeBoxPrivate*, %struct._GimpSizeBoxPrivate** %priv, align 8
  %size_chain25 = getelementptr inbounds %struct._GimpSizeBoxPrivate, %struct._GimpSizeBoxPrivate* %45, i32 0, i32 1
  %46 = load %struct._GimpChainButton*, %struct._GimpChainButton** %size_chain25, align 8
  %47 = bitcast %struct._GimpChainButton* %46 to %struct._GTypeInstance*
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 80)
  %48 = bitcast %struct._GTypeInstance* %call26 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* inttoptr (i64 1 to i8*))
  %49 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %50 = bitcast %struct._GimpSizeBox* %49 to %struct._GTypeInstance*
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 80)
  %51 = bitcast %struct._GTypeInstance* %call27 to %struct._GObject*
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %entry4, align 8
  %53 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %xresolution28 = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %53, i32 0, i32 5
  %54 = load double, double* %xresolution28, align 8
  %55 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %yresolution29 = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %55, i32 0, i32 6
  %56 = load double, double* %yresolution29, align 8
  %call30 = call i32 @gimp_prop_coordinates_connect(%struct._GObject* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %struct._GtkWidget* %52, %struct._GtkWidget* null, double %54, double %56)
  %57 = load %struct._GimpSizeBoxPrivate*, %struct._GimpSizeBoxPrivate** %priv, align 8
  %size_chain31 = getelementptr inbounds %struct._GimpSizeBoxPrivate, %struct._GimpSizeBoxPrivate* %57, i32 0, i32 1
  %58 = load %struct._GimpChainButton*, %struct._GimpChainButton** %size_chain31, align 8
  %59 = bitcast %struct._GimpChainButton* %58 to i8*
  %60 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %61 = bitcast %struct._GimpSizeBox* %60 to i8*
  %call32 = call i64 @g_signal_connect_data(i8* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GimpChainButton*, %struct._GimpSizeBox*)* @gimp_size_box_chain_toggled to void ()*), i8* %61, void (i8*, %struct._GClosure*)* null, i32 0)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_box_get_type() #7
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call33)
  %64 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkBox*
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %entry4, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %64, %struct._GtkWidget* %65, i32 0, i32 0, i32 0)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %entry4, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %66)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %entry4, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_container_get_type() #7
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call35)
  %69 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkContainer*
  %call37 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %69)
  store %struct._GList* %call37, %struct._GList** %children, align 8
  %70 = load %struct._GList*, %struct._GList** %children, align 8
  store %struct._GList* %70, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end
  %71 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool38 = icmp ne %struct._GList* %71, null
  br i1 %tobool38, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %72 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %72, i32 0, i32 0
  %73 = load i8*, i8** %data, align 8
  %74 = bitcast i8* %73 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %74, %struct._GTypeInstance** %__inst, align 8
  %call39 = call i64 @gtk_label_get_type() #7
  store i64 %call39, i64* %__t, align 8
  %75 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool40 = icmp ne %struct._GTypeInstance* %75, null
  br i1 %tobool40, label %if.else, label %if.then.41

if.then.41:                                       ; preds = %for.body
  store i32 0, i32* %__r, align 4
  br label %if.end.49

if.else:                                          ; preds = %for.body
  %76 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %76, i32 0, i32 0
  %77 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool42 = icmp ne %struct._GTypeClass* %77, null
  br i1 %tobool42, label %land.lhs.true, label %if.else.46

land.lhs.true:                                    ; preds = %if.else
  %78 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class43 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %78, i32 0, i32 0
  %79 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class43, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %79, i32 0, i32 0
  %80 = load i64, i64* %g_type, align 8
  %81 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %80, %81
  br i1 %cmp, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.48

if.else.46:                                       ; preds = %land.lhs.true, %if.else
  %82 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %83 = load i64, i64* %__t, align 8
  %call47 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %82, i64 %83) #8
  store i32 %call47, i32* %__r, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.46, %if.then.45
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.41
  %84 = load i32, i32* %__r, align 4
  store i32 %84, i32* %tmp
  %85 = load i32, i32* %tmp
  %tobool50 = icmp ne i32 %85, 0
  br i1 %tobool50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end.49
  %86 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %size_group = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %86, i32 0, i32 1
  %87 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %88 = load %struct._GList*, %struct._GList** %list, align 8
  %data52 = getelementptr inbounds %struct._GList, %struct._GList* %88, i32 0, i32 0
  %89 = load i8*, i8** %data52, align 8
  %90 = bitcast i8* %89 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %87, %struct._GtkWidget* %90)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.end.49
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %91 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool54 = icmp ne %struct._GList* %91, null
  br i1 %tobool54, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %92 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %92, i32 0, i32 1
  %93 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %93, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %94 = load %struct._GList*, %struct._GList** %children, align 8
  call void @g_list_free(%struct._GList* %94)
  %call55 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call55, %struct._GtkWidget** %vbox, align 8
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %entry4, align 8
  %96 = bitcast %struct._GtkWidget* %95 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_table_get_type() #7
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call56)
  %97 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkTable*
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %97, %struct._GtkWidget* %98, i32 1, i32 3, i32 2, i32 3)
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %99)
  %call58 = call %struct._GtkWidget* @gtk_label_new(i8* null)
  store %struct._GtkWidget* %call58, %struct._GtkWidget** %label, align 8
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %101 = bitcast %struct._GtkWidget* %100 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_label_get_type() #7
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call59)
  %102 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %102, i32 15, double 0x3FEAAAAAAAAAA97E, i32 -1)
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %104 = bitcast %struct._GtkWidget* %103 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_misc_get_type() #7
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call61)
  %105 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %105, float 0.000000e+00, float 0.000000e+00)
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %107 = bitcast %struct._GtkWidget* %106 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_box_get_type() #7
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 %call63)
  %108 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkBox*
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %108, %struct._GtkWidget* %109, i32 0, i32 0, i32 0)
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %110)
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %112 = load %struct._GimpSizeBoxPrivate*, %struct._GimpSizeBoxPrivate** %priv, align 8
  %pixel_label = getelementptr inbounds %struct._GimpSizeBoxPrivate, %struct._GimpSizeBoxPrivate* %112, i32 0, i32 2
  store %struct._GtkWidget* %111, %struct._GtkWidget** %pixel_label, align 8
  %113 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %edit_resolution = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %113, i32 0, i32 8
  %114 = load i32, i32* %edit_resolution, align 4
  %tobool65 = icmp ne i32 %114, 0
  br i1 %tobool65, label %if.then.66, label %if.else.141

if.then.66:                                       ; preds = %for.end
  %call68 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call68, %struct._GtkWidget** %hbox, align 8
  %115 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %116 = bitcast %struct._GimpSizeBox* %115 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_box_get_type() #7
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call69)
  %117 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkBox*
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %117, %struct._GtkWidget* %118, i32 0, i32 0, i32 0)
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %119)
  %120 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %xresolution71 = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %120, i32 0, i32 5
  %121 = load double, double* %xresolution71, align 8
  %122 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %yresolution72 = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %122, i32 0, i32 6
  %123 = load double, double* %yresolution72, align 8
  %sub = fsub double %121, %123
  %cmp73 = fcmp olt double %sub, 0.000000e+00
  br i1 %cmp73, label %cond.true.75, label %cond.false.80

cond.true.75:                                     ; preds = %if.then.66
  %124 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %xresolution76 = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %124, i32 0, i32 5
  %125 = load double, double* %xresolution76, align 8
  %126 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %yresolution77 = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %126, i32 0, i32 6
  %127 = load double, double* %yresolution77, align 8
  %sub78 = fsub double %125, %127
  %sub79 = fsub double -0.000000e+00, %sub78
  br label %cond.end.84

cond.false.80:                                    ; preds = %if.then.66
  %128 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %xresolution81 = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %128, i32 0, i32 5
  %129 = load double, double* %xresolution81, align 8
  %130 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %yresolution82 = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %130, i32 0, i32 6
  %131 = load double, double* %yresolution82, align 8
  %sub83 = fsub double %129, %131
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.80, %cond.true.75
  %cond85 = phi double [ %sub79, %cond.true.75 ], [ %sub83, %cond.false.80 ]
  %cmp86 = fcmp olt double %cond85, 5.000000e-03
  %conv87 = zext i1 %cmp86 to i32
  store i32 %conv87, i32* %chain_active, align 4
  %132 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %resolution_unit = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %132, i32 0, i32 7
  %133 = load i32, i32* %resolution_unit, align 4
  %call88 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0)) #6
  %134 = load i32, i32* %chain_active, align 4
  %call89 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0)) #6
  %135 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %xresolution90 = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %135, i32 0, i32 5
  %136 = load double, double* %xresolution90, align 8
  %call91 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0)) #6
  %137 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %yresolution92 = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %137, i32 0, i32 6
  %138 = load double, double* %yresolution92, align 8
  %call93 = call %struct._GtkWidget* @gimp_coordinates_new(i32 %133, i8* %call88, i32 0, i32 0, i32 8, i32 2, i32 %134, i32 0, i8* %call89, double %136, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+01, i8* %call91, double %138, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+01)
  store %struct._GtkWidget* %call93, %struct._GtkWidget** %entry4, align 8
  %139 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %140 = bitcast %struct._GtkWidget* %139 to %struct._GTypeInstance*
  %call94 = call i64 @gtk_box_get_type() #7
  %call95 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %140, i64 %call94)
  %141 = bitcast %struct._GTypeInstance* %call95 to %struct._GtkBox*
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %entry4, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %141, %struct._GtkWidget* %142, i32 0, i32 0, i32 0)
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %entry4, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %143)
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %entry4, align 8
  %145 = bitcast %struct._GtkWidget* %144 to %struct._GTypeInstance*
  %call96 = call i64 @gtk_container_get_type() #7
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %145, i64 %call96)
  %146 = bitcast %struct._GTypeInstance* %call97 to %struct._GtkContainer*
  %call98 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %146)
  store %struct._GList* %call98, %struct._GList** %children, align 8
  %147 = load %struct._GList*, %struct._GList** %children, align 8
  store %struct._GList* %147, %struct._GList** %list, align 8
  br label %for.cond.99

for.cond.99:                                      ; preds = %cond.end.136, %cond.end.84
  %148 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool100 = icmp ne %struct._GList* %148, null
  br i1 %tobool100, label %for.body.101, label %for.end.138

for.body.101:                                     ; preds = %for.cond.99
  %149 = load %struct._GList*, %struct._GList** %list, align 8
  %data104 = getelementptr inbounds %struct._GList, %struct._GList* %149, i32 0, i32 0
  %150 = load i8*, i8** %data104, align 8
  %151 = bitcast i8* %150 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %151, %struct._GTypeInstance** %__inst103, align 8
  %call107 = call i64 @gtk_label_get_type() #7
  store i64 %call107, i64* %__t106, align 8
  %152 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst103, align 8
  %tobool110 = icmp ne %struct._GTypeInstance* %152, null
  br i1 %tobool110, label %if.else.112, label %if.then.111

if.then.111:                                      ; preds = %for.body.101
  store i32 0, i32* %__r109, align 4
  br label %if.end.124

if.else.112:                                      ; preds = %for.body.101
  %153 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst103, align 8
  %g_class113 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %153, i32 0, i32 0
  %154 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class113, align 8
  %tobool114 = icmp ne %struct._GTypeClass* %154, null
  br i1 %tobool114, label %land.lhs.true.115, label %if.else.121

land.lhs.true.115:                                ; preds = %if.else.112
  %155 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst103, align 8
  %g_class116 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %155, i32 0, i32 0
  %156 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class116, align 8
  %g_type117 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %156, i32 0, i32 0
  %157 = load i64, i64* %g_type117, align 8
  %158 = load i64, i64* %__t106, align 8
  %cmp118 = icmp eq i64 %157, %158
  br i1 %cmp118, label %if.then.120, label %if.else.121

if.then.120:                                      ; preds = %land.lhs.true.115
  store i32 1, i32* %__r109, align 4
  br label %if.end.123

if.else.121:                                      ; preds = %land.lhs.true.115, %if.else.112
  %159 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst103, align 8
  %160 = load i64, i64* %__t106, align 8
  %call122 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %159, i64 %160) #8
  store i32 %call122, i32* %__r109, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.121, %if.then.120
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.then.111
  %161 = load i32, i32* %__r109, align 4
  store i32 %161, i32* %tmp125
  %162 = load i32, i32* %tmp125
  %tobool126 = icmp ne i32 %162, 0
  br i1 %tobool126, label %if.then.127, label %if.end.130

if.then.127:                                      ; preds = %if.end.124
  %163 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %size_group128 = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %163, i32 0, i32 1
  %164 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group128, align 8
  %165 = load %struct._GList*, %struct._GList** %list, align 8
  %data129 = getelementptr inbounds %struct._GList, %struct._GList* %165, i32 0, i32 0
  %166 = load i8*, i8** %data129, align 8
  %167 = bitcast i8* %166 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %164, %struct._GtkWidget* %167)
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.127, %if.end.124
  br label %for.inc.131

for.inc.131:                                      ; preds = %if.end.130
  %168 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool132 = icmp ne %struct._GList* %168, null
  br i1 %tobool132, label %cond.true.133, label %cond.false.135

cond.true.133:                                    ; preds = %for.inc.131
  %169 = load %struct._GList*, %struct._GList** %list, align 8
  %next134 = getelementptr inbounds %struct._GList, %struct._GList* %169, i32 0, i32 1
  %170 = load %struct._GList*, %struct._GList** %next134, align 8
  br label %cond.end.136

cond.false.135:                                   ; preds = %for.inc.131
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.false.135, %cond.true.133
  %cond137 = phi %struct._GList* [ %170, %cond.true.133 ], [ null, %cond.false.135 ]
  store %struct._GList* %cond137, %struct._GList** %list, align 8
  br label %for.cond.99

for.end.138:                                      ; preds = %for.cond.99
  %171 = load %struct._GList*, %struct._GList** %children, align 8
  call void @g_list_free(%struct._GList* %171)
  %172 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %173 = bitcast %struct._GimpSizeBox* %172 to %struct._GTypeInstance*
  %call139 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %173, i64 80)
  %174 = bitcast %struct._GTypeInstance* %call139 to %struct._GObject*
  %175 = load %struct._GtkWidget*, %struct._GtkWidget** %entry4, align 8
  %call140 = call i32 @gimp_prop_coordinates_connect(%struct._GObject* %174, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), %struct._GtkWidget* %175, %struct._GtkWidget* null, double 1.000000e+00, double 1.000000e+00)
  br label %if.end.149

if.else.141:                                      ; preds = %for.end
  %call142 = call %struct._GtkWidget* @gtk_label_new(i8* null)
  store %struct._GtkWidget* %call142, %struct._GtkWidget** %label, align 8
  %176 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %177 = bitcast %struct._GtkWidget* %176 to %struct._GTypeInstance*
  %call143 = call i64 @gtk_label_get_type() #7
  %call144 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %177, i64 %call143)
  %178 = bitcast %struct._GTypeInstance* %call144 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %178, i32 15, double 0x3FEAAAAAAAAAA97E, i32 -1)
  %179 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %180 = bitcast %struct._GtkWidget* %179 to %struct._GTypeInstance*
  %call145 = call i64 @gtk_misc_get_type() #7
  %call146 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %180, i64 %call145)
  %181 = bitcast %struct._GTypeInstance* %call146 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %181, float 0.000000e+00, float 0.000000e+00)
  %182 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %183 = bitcast %struct._GtkWidget* %182 to %struct._GTypeInstance*
  %call147 = call i64 @gtk_box_get_type() #7
  %call148 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %183, i64 %call147)
  %184 = bitcast %struct._GTypeInstance* %call148 to %struct._GtkBox*
  %185 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %184, %struct._GtkWidget* %185, i32 0, i32 0, i32 0)
  %186 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %186)
  %187 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %188 = load %struct._GimpSizeBoxPrivate*, %struct._GimpSizeBoxPrivate** %priv, align 8
  %res_label = getelementptr inbounds %struct._GimpSizeBoxPrivate, %struct._GimpSizeBoxPrivate* %188, i32 0, i32 3
  store %struct._GtkWidget* %187, %struct._GtkWidget** %res_label, align 8
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.141, %for.end.138
  %189 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  call void @gimp_size_box_update_size(%struct._GimpSizeBox* %189)
  %190 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  call void @gimp_size_box_update_resolution(%struct._GimpSizeBox* %190)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_size_box_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %box = alloca %struct._GimpSizeBox*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_size_box_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSizeBox*
  store %struct._GimpSizeBox* %2, %struct._GimpSizeBox** %box, align 8
  %3 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %size_group = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %3, i32 0, i32 1
  %4 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %tobool = icmp ne %struct._GtkSizeGroup* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %size_group2 = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %5, i32 0, i32 1
  %6 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group2, align 8
  %7 = bitcast %struct._GtkSizeGroup* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %size_group3 = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %8, i32 0, i32 1
  store %struct._GtkSizeGroup* null, %struct._GtkSizeGroup** %size_group3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_size_box_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 80)
  %11 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 5
  %12 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %12(%struct._GObject* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_size_box_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %box = alloca %struct._GimpSizeBox*, align 8
  %priv = alloca %struct._GimpSizeBoxPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_size_box_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSizeBox*
  store %struct._GimpSizeBox* %2, %struct._GimpSizeBox** %box, align 8
  %3 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %4 = bitcast %struct._GimpSizeBox* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_size_box_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpSizeBoxPrivate*
  store %struct._GimpSizeBoxPrivate* %5, %struct._GimpSizeBoxPrivate** %priv, align 8
  %6 = load i32, i32* %property_id.addr, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.5
    i32 3, label %sw.bb.7
    i32 4, label %sw.bb.9
    i32 5, label %sw.bb.13
    i32 6, label %sw.bb.21
    i32 7, label %sw.bb.23
    i32 8, label %sw.bb.29
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i32 @g_value_get_int(%struct._GValue* %7)
  %8 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %width = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %8, i32 0, i32 2
  store i32 %call4, i32* %width, align 4
  %9 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  call void @gimp_size_box_update_size(%struct._GimpSizeBox* %9)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i32 @g_value_get_int(%struct._GValue* %10)
  %11 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %height = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %11, i32 0, i32 3
  store i32 %call6, i32* %height, align 4
  %12 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  call void @gimp_size_box_update_size(%struct._GimpSizeBox* %12)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i32 @g_value_get_int(%struct._GValue* %13)
  %14 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %unit = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %14, i32 0, i32 4
  store i32 %call8, i32* %unit, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %15 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call double @g_value_get_double(%struct._GValue* %15)
  %16 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %xresolution = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %16, i32 0, i32 5
  store double %call10, double* %xresolution, align 8
  %17 = load %struct._GimpSizeBoxPrivate*, %struct._GimpSizeBoxPrivate** %priv, align 8
  %size_entry = getelementptr inbounds %struct._GimpSizeBoxPrivate, %struct._GimpSizeBoxPrivate* %17, i32 0, i32 0
  %18 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %size_entry, align 8
  %tobool = icmp ne %struct._GimpSizeEntry* %18, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.9
  %19 = load %struct._GimpSizeBoxPrivate*, %struct._GimpSizeBoxPrivate** %priv, align 8
  %size_entry11 = getelementptr inbounds %struct._GimpSizeBoxPrivate, %struct._GimpSizeBoxPrivate* %19, i32 0, i32 0
  %20 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %size_entry11, align 8
  %21 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %xresolution12 = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %21, i32 0, i32 5
  %22 = load double, double* %xresolution12, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %20, i32 0, double %22, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.9
  %23 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  call void @gimp_size_box_update_resolution(%struct._GimpSizeBox* %23)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %24 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call14 = call double @g_value_get_double(%struct._GValue* %24)
  %25 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %yresolution = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %25, i32 0, i32 6
  store double %call14, double* %yresolution, align 8
  %26 = load %struct._GimpSizeBoxPrivate*, %struct._GimpSizeBoxPrivate** %priv, align 8
  %size_entry15 = getelementptr inbounds %struct._GimpSizeBoxPrivate, %struct._GimpSizeBoxPrivate* %26, i32 0, i32 0
  %27 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %size_entry15, align 8
  %tobool16 = icmp ne %struct._GimpSizeEntry* %27, null
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %sw.bb.13
  %28 = load %struct._GimpSizeBoxPrivate*, %struct._GimpSizeBoxPrivate** %priv, align 8
  %size_entry18 = getelementptr inbounds %struct._GimpSizeBoxPrivate, %struct._GimpSizeBoxPrivate* %28, i32 0, i32 0
  %29 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %size_entry18, align 8
  %30 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %yresolution19 = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %30, i32 0, i32 6
  %31 = load double, double* %yresolution19, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %29, i32 1, double %31, i32 1)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %sw.bb.13
  %32 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  call void @gimp_size_box_update_resolution(%struct._GimpSizeBox* %32)
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %33 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call22 = call i32 @g_value_get_int(%struct._GValue* %33)
  %34 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %resolution_unit = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %34, i32 0, i32 7
  store i32 %call22, i32* %resolution_unit, align 4
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %35 = load %struct._GimpSizeBoxPrivate*, %struct._GimpSizeBoxPrivate** %priv, align 8
  %size_chain = getelementptr inbounds %struct._GimpSizeBoxPrivate, %struct._GimpSizeBoxPrivate* %35, i32 0, i32 1
  %36 = load %struct._GimpChainButton*, %struct._GimpChainButton** %size_chain, align 8
  %tobool24 = icmp ne %struct._GimpChainButton* %36, null
  br i1 %tobool24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %sw.bb.23
  %37 = load %struct._GimpSizeBoxPrivate*, %struct._GimpSizeBoxPrivate** %priv, align 8
  %size_chain26 = getelementptr inbounds %struct._GimpSizeBoxPrivate, %struct._GimpSizeBoxPrivate* %37, i32 0, i32 1
  %38 = load %struct._GimpChainButton*, %struct._GimpChainButton** %size_chain26, align 8
  %39 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call27 = call i32 @g_value_get_boolean(%struct._GValue* %39)
  call void @gimp_chain_button_set_active(%struct._GimpChainButton* %38, i32 %call27)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %sw.bb.23
  br label %sw.epilog

sw.bb.29:                                         ; preds = %entry
  %40 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call30 = call i32 @g_value_get_boolean(%struct._GValue* %40)
  %41 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %edit_resolution = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %41, i32 0, i32 8
  store i32 %call30, i32* %edit_resolution, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %42 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %42, %struct._GObject** %_glib__object, align 8
  %43 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %43, %struct._GParamSpec** %_glib__pspec, align 8
  %44 = load i32, i32* %property_id.addr, align 4
  store i32 %44, i32* %_glib__property_id, align 4
  %45 = load i32, i32* %_glib__property_id, align 4
  %46 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %46, i32 0, i32 1
  %47 = load i8*, i8** %name, align 8
  %48 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %49 = bitcast %struct._GParamSpec* %48 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %49, i32 0, i32 0
  %50 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %50, i32 0, i32 0
  %51 = load i64, i64* %g_type, align 8
  %call31 = call i8* @g_type_name(i64 %51)
  %52 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %53 = bitcast %struct._GObject* %52 to %struct._GTypeInstance*
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %53, i32 0, i32 0
  %54 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %g_type33 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %54, i32 0, i32 0
  %55 = load i64, i64* %g_type33, align 8
  %call34 = call i8* @g_type_name(i64 %55)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i32 370, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %45, i8* %47, i8* %call31, i8* %call34)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.29, %if.end.28, %sw.bb.21, %if.end.20, %if.end, %sw.bb.7, %sw.bb.5, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_size_box_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %box = alloca %struct._GimpSizeBox*, align 8
  %priv = alloca %struct._GimpSizeBoxPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_size_box_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSizeBox*
  store %struct._GimpSizeBox* %2, %struct._GimpSizeBox** %box, align 8
  %3 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %4 = bitcast %struct._GimpSizeBox* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_size_box_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpSizeBoxPrivate*
  store %struct._GimpSizeBoxPrivate* %5, %struct._GimpSizeBoxPrivate** %priv, align 8
  %6 = load i32, i32* %property_id.addr, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.6
    i32 5, label %sw.bb.7
    i32 6, label %sw.bb.8
    i32 7, label %sw.bb.9
    i32 8, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %width = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %8, i32 0, i32 2
  %9 = load i32, i32* %width, align 4
  call void @g_value_set_int(%struct._GValue* %7, i32 %9)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %height = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %11, i32 0, i32 3
  %12 = load i32, i32* %height, align 4
  call void @g_value_set_int(%struct._GValue* %10, i32 %12)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %unit = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %14, i32 0, i32 4
  %15 = load i32, i32* %unit, align 4
  call void @g_value_set_int(%struct._GValue* %13, i32 %15)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %xresolution = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %17, i32 0, i32 5
  %18 = load double, double* %xresolution, align 8
  call void @g_value_set_double(%struct._GValue* %16, double %18)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %20 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %yresolution = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %20, i32 0, i32 6
  %21 = load double, double* %yresolution, align 8
  call void @g_value_set_double(%struct._GValue* %19, double %21)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %23 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %resolution_unit = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %23, i32 0, i32 7
  %24 = load i32, i32* %resolution_unit, align 4
  call void @g_value_set_int(%struct._GValue* %22, i32 %24)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %26 = load %struct._GimpSizeBoxPrivate*, %struct._GimpSizeBoxPrivate** %priv, align 8
  %size_chain = getelementptr inbounds %struct._GimpSizeBoxPrivate, %struct._GimpSizeBoxPrivate* %26, i32 0, i32 1
  %27 = load %struct._GimpChainButton*, %struct._GimpChainButton** %size_chain, align 8
  %call10 = call i32 @gimp_chain_button_get_active(%struct._GimpChainButton* %27)
  call void @g_value_set_boolean(%struct._GValue* %25, i32 %call10)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %29 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box, align 8
  %edit_resolution = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %29, i32 0, i32 8
  %30 = load i32, i32* %edit_resolution, align 4
  call void @g_value_set_boolean(%struct._GValue* %28, i32 %30)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %31 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %31, %struct._GObject** %_glib__object, align 8
  %32 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %32, %struct._GParamSpec** %_glib__pspec, align 8
  %33 = load i32, i32* %property_id.addr, align 4
  store i32 %33, i32* %_glib__property_id, align 4
  %34 = load i32, i32* %_glib__property_id, align 4
  %35 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %35, i32 0, i32 1
  %36 = load i8*, i8** %name, align 8
  %37 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %38 = bitcast %struct._GParamSpec* %37 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %38, i32 0, i32 0
  %39 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %39, i32 0, i32 0
  %40 = load i64, i64* %g_type, align 8
  %call12 = call i8* @g_type_name(i64 %40)
  %41 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %42 = bitcast %struct._GObject* %41 to %struct._GTypeInstance*
  %g_class13 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %42, i32 0, i32 0
  %43 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class13, align 8
  %g_type14 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %43, i32 0, i32 0
  %44 = load i64, i64* %g_type14, align 8
  %call15 = call i8* @g_type_name(i64 %44)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i32 420, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %34, i8* %36, i8* %call12, i8* %call15)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.11, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb
  ret void
}

declare void @g_type_class_add_private(i8*, i64) #1

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_unit(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_coordinates_new(i32, i8*, i32, i32, i32, i32, i32, i32, i8*, double, double, double, double, double, double, i8*, double, double, double, double, double, double) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #2

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare i32 @gimp_prop_coordinates_connect(%struct._GObject*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, double, double) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_size_box_chain_toggled(%struct._GimpChainButton* %button, %struct._GimpSizeBox* %box) #3 {
entry:
  %button.addr = alloca %struct._GimpChainButton*, align 8
  %box.addr = alloca %struct._GimpSizeBox*, align 8
  store %struct._GimpChainButton* %button, %struct._GimpChainButton** %button.addr, align 8
  store %struct._GimpSizeBox* %box, %struct._GimpSizeBox** %box.addr, align 8
  %0 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box.addr, align 8
  %1 = bitcast %struct._GimpSizeBox* %0 to i8*
  %2 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button.addr, align 8
  %call = call i32 @gimp_chain_button_get_active(%struct._GimpChainButton* %2)
  call void (i8*, i8*, ...) @g_object_set(i8* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i32 %call, i8* null)
  ret void
}

declare %struct._GList* @gtk_container_get_children(%struct._GtkContainer*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #5

declare void @gtk_size_group_add_widget(%struct._GtkSizeGroup*, %struct._GtkWidget*) #1

declare void @g_list_free(%struct._GList*) #1

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gimp_label_set_attributes(%struct._GtkLabel*, ...) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_size_box_update_size(%struct._GimpSizeBox* %box) #3 {
entry:
  %box.addr = alloca %struct._GimpSizeBox*, align 8
  %priv = alloca %struct._GimpSizeBoxPrivate*, align 8
  %text = alloca i8*, align 8
  store %struct._GimpSizeBox* %box, %struct._GimpSizeBox** %box.addr, align 8
  %0 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box.addr, align 8
  %1 = bitcast %struct._GimpSizeBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_size_box_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSizeBoxPrivate*
  store %struct._GimpSizeBoxPrivate* %2, %struct._GimpSizeBoxPrivate** %priv, align 8
  %3 = load %struct._GimpSizeBoxPrivate*, %struct._GimpSizeBoxPrivate** %priv, align 8
  %pixel_label = getelementptr inbounds %struct._GimpSizeBoxPrivate, %struct._GimpSizeBoxPrivate* %3, i32 0, i32 2
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %pixel_label, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box.addr, align 8
  %height = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %5, i32 0, i32 3
  %6 = load i32, i32* %height, align 4
  %conv = sext i32 %6 to i64
  %call2 = call i8* @ngettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i64 %conv) #6
  %7 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box.addr, align 8
  %width = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %7, i32 0, i32 2
  %8 = load i32, i32* %width, align 4
  %9 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box.addr, align 8
  %height3 = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %9, i32 0, i32 3
  %10 = load i32, i32* %height3, align 4
  %call4 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call2, i32 %8, i32 %10)
  store i8* %call4, i8** %text, align 8
  %11 = load %struct._GimpSizeBoxPrivate*, %struct._GimpSizeBoxPrivate** %priv, align 8
  %pixel_label5 = getelementptr inbounds %struct._GimpSizeBoxPrivate, %struct._GimpSizeBoxPrivate* %11, i32 0, i32 2
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %pixel_label5, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_label_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call6)
  %14 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkLabel*
  %15 = load i8*, i8** %text, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %14, i8* %15)
  %16 = load i8*, i8** %text, align 8
  call void @g_free(i8* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_size_box_update_resolution(%struct._GimpSizeBox* %box) #3 {
entry:
  %box.addr = alloca %struct._GimpSizeBox*, align 8
  %priv = alloca %struct._GimpSizeBoxPrivate*, align 8
  %text = alloca i8*, align 8
  %xres = alloca i32, align 4
  %yres = alloca i32, align 4
  store %struct._GimpSizeBox* %box, %struct._GimpSizeBox** %box.addr, align 8
  %0 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box.addr, align 8
  %1 = bitcast %struct._GimpSizeBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_size_box_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSizeBoxPrivate*
  store %struct._GimpSizeBoxPrivate* %2, %struct._GimpSizeBoxPrivate** %priv, align 8
  %3 = load %struct._GimpSizeBoxPrivate*, %struct._GimpSizeBoxPrivate** %priv, align 8
  %size_entry = getelementptr inbounds %struct._GimpSizeBoxPrivate, %struct._GimpSizeBoxPrivate* %3, i32 0, i32 0
  %4 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %size_entry, align 8
  %tobool = icmp ne %struct._GimpSizeEntry* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpSizeBoxPrivate*, %struct._GimpSizeBoxPrivate** %priv, align 8
  %size_entry2 = getelementptr inbounds %struct._GimpSizeBoxPrivate, %struct._GimpSizeBoxPrivate* %5, i32 0, i32 0
  %6 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %size_entry2, align 8
  %7 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box.addr, align 8
  %width = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %7, i32 0, i32 2
  %8 = load i32, i32* %width, align 4
  %conv = sitofp i32 %8 to double
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %6, i32 0, double %conv)
  %9 = load %struct._GimpSizeBoxPrivate*, %struct._GimpSizeBoxPrivate** %priv, align 8
  %size_entry3 = getelementptr inbounds %struct._GimpSizeBoxPrivate, %struct._GimpSizeBoxPrivate* %9, i32 0, i32 0
  %10 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %size_entry3, align 8
  %11 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box.addr, align 8
  %height = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %11, i32 0, i32 3
  %12 = load i32, i32* %height, align 4
  %conv4 = sitofp i32 %12 to double
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %10, i32 1, double %conv4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct._GimpSizeBoxPrivate*, %struct._GimpSizeBoxPrivate** %priv, align 8
  %res_label = getelementptr inbounds %struct._GimpSizeBoxPrivate, %struct._GimpSizeBoxPrivate* %13, i32 0, i32 3
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %res_label, align 8
  %tobool5 = icmp ne %struct._GtkWidget* %14, null
  br i1 %tobool5, label %if.then.6, label %if.end.20

if.then.6:                                        ; preds = %if.end
  %15 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box.addr, align 8
  %xresolution = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %15, i32 0, i32 5
  %16 = load double, double* %xresolution, align 8
  %add = fadd double %16, 5.000000e-01
  %conv7 = fptosi double %add to i32
  store i32 %conv7, i32* %xres, align 4
  %17 = load %struct._GimpSizeBox*, %struct._GimpSizeBox** %box.addr, align 8
  %yresolution = getelementptr inbounds %struct._GimpSizeBox, %struct._GimpSizeBox* %17, i32 0, i32 6
  %18 = load double, double* %yresolution, align 8
  %add8 = fadd double %18, 5.000000e-01
  %conv9 = fptosi double %add8 to i32
  store i32 %conv9, i32* %yres, align 4
  %19 = load i32, i32* %xres, align 4
  %20 = load i32, i32* %yres, align 4
  %cmp = icmp ne i32 %19, %20
  br i1 %cmp, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then.6
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0)) #6
  %21 = load i32, i32* %xres, align 4
  %22 = load i32, i32* %yres, align 4
  %call13 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call12, i32 %21, i32 %22)
  store i8* %call13, i8** %text, align 8
  br label %if.end.16

if.else:                                          ; preds = %if.then.6
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0)) #6
  %23 = load i32, i32* %yres, align 4
  %call15 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call14, i32 %23)
  store i8* %call15, i8** %text, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.11
  %24 = load %struct._GimpSizeBoxPrivate*, %struct._GimpSizeBoxPrivate** %priv, align 8
  %res_label17 = getelementptr inbounds %struct._GimpSizeBoxPrivate, %struct._GimpSizeBoxPrivate* %24, i32 0, i32 3
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %res_label17, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_label_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call18)
  %27 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkLabel*
  %28 = load i8*, i8** %text, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %27, i8* %28)
  %29 = load i8*, i8** %text, align 8
  call void @g_free(i8* %29)
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.16, %if.end
  ret void
}

declare void @g_object_set(i8*, i8*, ...) #1

declare i32 @gimp_chain_button_get_active(%struct._GimpChainButton*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @ngettext(i8*, i8*, i64) #4

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

declare void @g_free(i8*) #1

declare void @gimp_size_entry_set_refval(%struct._GimpSizeEntry*, i32, double) #1

declare void @g_object_unref(i8*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry*, i32, double, i32) #1

declare void @gimp_chain_button_set_active(%struct._GimpChainButton*, i32) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @gtk_orientable_set_orientation(%struct._GtkOrientable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_orientable_get_type() #2

declare void @gtk_box_set_spacing(%struct._GtkBox*, i32) #1

declare %struct._GtkSizeGroup* @gtk_size_group_new(i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
