; ModuleID = './libgimpwidgets/gimppreviewarea.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpPreviewAreaClass = type { %struct._GtkDrawingAreaClass, void ()*, void ()*, void ()*, void ()* }
%struct._GtkDrawingAreaClass = type { %struct._GtkWidgetClass, void ()*, void ()*, void ()*, void ()* }
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
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GtkMenu = type { %struct._GtkMenuShell, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAccelGroup*, i8*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i32, i32, i32, %struct._GdkRegion*, i32, i8 }
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GParamSpecEnum = type { %struct._GParamSpec, %struct._GEnumClass*, i32 }
%struct._GtkCheckMenuItem = type { %struct._GtkMenuItem, i8 }
%struct._GtkMenuItem = type { %struct._GtkItem, %struct._GtkWidget*, %struct._GdkDrawable*, i16, i16, i8*, i8, i32 }
%struct._GtkItem = type { %struct._GtkBin }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkRadioMenuItem = type { %struct._GtkCheckMenuItem, %struct._GSList* }
%struct._GdkPixbuf = type opaque
%struct._cairo = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_preview_area_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpPreviewArea\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_preview_area_draw = private unnamed_addr constant [23 x i8] c"gimp_preview_area_draw\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"GIMP_IS_PREVIEW_AREA (area)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"width >= 0 && height >= 0\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"buf != NULL\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"rowstride > 0\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"area->colormap != NULL\00", align 1
@__func__.gimp_preview_area_blend = private unnamed_addr constant [24 x i8] c"gimp_preview_area_blend\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"buf1 != NULL\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"buf2 != NULL\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"rowstride1 > 0\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"rowstride2 > 0\00", align 1
@__func__.gimp_preview_area_mask = private unnamed_addr constant [23 x i8] c"gimp_preview_area_mask\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"mask != NULL\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"rowstride_mask > 0\00", align 1
@__func__.gimp_preview_area_fill = private unnamed_addr constant [23 x i8] c"gimp_preview_area_fill\00", align 1
@__func__.gimp_preview_area_set_offsets = private unnamed_addr constant [30 x i8] c"gimp_preview_area_set_offsets\00", align 1
@__func__.gimp_preview_area_set_colormap = private unnamed_addr constant [31 x i8] c"gimp_preview_area_set_colormap\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"colormap != NULL || num_colors == 0\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"num_colors >= 0 && num_colors <= 256\00", align 1
@__func__.gimp_preview_area_set_max_size = private unnamed_addr constant [31 x i8] c"gimp_preview_area_set_max_size\00", align 1
@__func__.gimp_preview_area_menu_popup = private unnamed_addr constant [29 x i8] c"gimp_preview_area_menu_popup\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"check-type\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"check-size\00", align 1
@gimp_preview_area_parent_class = internal global i8* null, align 8
@GimpPreviewArea_private_offset = internal global i32 0, align 4
@.str.17 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"Check Size\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"Check Style\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"gimppreviewarea.c\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@__func__.gimp_preview_area_image_type_bytes = private unnamed_addr constant [35 x i8] c"gimp_preview_area_image_type_bytes\00", align 1
@g_param_spec_types = external global i64*, align 8
@__func__.gimp_preview_area_menu_new = private unnamed_addr constant [27 x i8] c"gimp_preview_area_menu_new\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"G_IS_PARAM_SPEC_ENUM (pspec)\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"gimp-preview-area-prop-name\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"gimp-preview-area-prop-value\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_preview_area_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_preview_area_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_preview_area_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_drawing_area_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 784, void (i8*, i8*)* bitcast (void (i8*)* @gimp_preview_area_class_intern_init to void (i8*, i8*)*), i32 160, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpPreviewArea*)* @gimp_preview_area_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_preview_area_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_preview_area_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_drawing_area_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_preview_area_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_preview_area_parent_class, align 8
  %1 = load i32, i32* @GimpPreviewArea_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpPreviewArea_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpPreviewAreaClass*
  call void @gimp_preview_area_class_init(%struct._GimpPreviewAreaClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_preview_area_init(%struct._GimpPreviewArea* %area) #3 {
entry:
  %area.addr = alloca %struct._GimpPreviewArea*, align 8
  store %struct._GimpPreviewArea* %area, %struct._GimpPreviewArea** %area.addr, align 8
  %0 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %check_size = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %0, i32 0, i32 1
  store i32 1, i32* %check_size, align 4
  %1 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %check_type = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %1, i32 0, i32 2
  store i32 1, i32* %check_type, align 4
  %2 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %buf = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %2, i32 0, i32 10
  store i8* null, i8** %buf, align 8
  %3 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %colormap = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %3, i32 0, i32 11
  store i8* null, i8** %colormap, align 8
  %4 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %4, i32 0, i32 6
  store i32 0, i32* %offset_x, align 4
  %5 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %5, i32 0, i32 7
  store i32 0, i32* %offset_y, align 4
  %6 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %width = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %6, i32 0, i32 3
  store i32 0, i32* %width, align 4
  %7 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %height = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %7, i32 0, i32 4
  store i32 0, i32* %height, align 4
  %8 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %rowstride = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %8, i32 0, i32 5
  store i32 0, i32* %rowstride, align 4
  %9 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %max_width = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %9, i32 0, i32 8
  store i32 -1, i32* %max_width, align 4
  %10 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %max_height = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %10, i32 0, i32 9
  store i32 -1, i32* %max_height, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_preview_area_new() #3 {
entry:
  %call = call i64 @gimp_preview_area_get_type() #7
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GtkWidget*
  ret %struct._GtkWidget* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_preview_area_draw(%struct._GimpPreviewArea* %area, i32 %x, i32 %y, i32 %width, i32 %height, i32 %type, i8* %buf, i32 %rowstride) #3 {
entry:
  %area.addr = alloca %struct._GimpPreviewArea*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %rowstride.addr = alloca i32, align 4
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %size = alloca i32, align 4
  %light = alloca i8, align 1
  %dark = alloca i8, align 1
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %bpp = alloca i32, align 4
  %s = alloca i8*, align 8
  %d = alloca i8*, align 8
  %alpha = alloca i32, align 4
  %check = alloca i32, align 4
  %s203 = alloca i8*, align 8
  %d205 = alloca i8*, align 8
  %s233 = alloca i8*, align 8
  %d235 = alloca i8*, align 8
  %alpha269 = alloca i32, align 4
  %check274 = alloca i32, align 4
  %s327 = alloca i8*, align 8
  %d329 = alloca i8*, align 8
  %colormap335 = alloca i8*, align 8
  %s376 = alloca i8*, align 8
  %d378 = alloca i8*, align 8
  %colormap385 = alloca i8*, align 8
  %alpha422 = alloca i32, align 4
  %check427 = alloca i32, align 4
  store %struct._GimpPreviewArea* %area, %struct._GimpPreviewArea** %area.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %rowstride, i32* %rowstride.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %1 = bitcast %struct._GimpPreviewArea* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_preview_area_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_preview_area_draw, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %width.addr, align 4
  %cmp12 = icmp sge i32 %13, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %height.addr, align 4
  %cmp14 = icmp sge i32 %14, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_preview_area_draw, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %15 = load i32, i32* %width.addr, align 4
  %cmp19 = icmp eq i32 %15, 0
  br i1 %cmp19, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.18
  %16 = load i32, i32* %height.addr, align 4
  %cmp20 = icmp eq i32 %16, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %lor.lhs.false, %do.end.18
  br label %return

if.end.22:                                        ; preds = %lor.lhs.false
  br label %do.body.23

do.body.23:                                       ; preds = %if.end.22
  %17 = load i8*, i8** %buf.addr, align 8
  %cmp24 = icmp ne i8* %17, null
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.23
  br label %if.end.27

if.else.26:                                       ; preds = %do.body.23
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_preview_area_draw, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.27:                                        ; preds = %if.then.25
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  br label %do.body.29

do.body.29:                                       ; preds = %do.end.28
  %18 = load i32, i32* %rowstride.addr, align 4
  %cmp30 = icmp sgt i32 %18, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.29
  br label %if.end.33

if.else.32:                                       ; preds = %do.body.29
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_preview_area_draw, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.33:                                        ; preds = %if.then.31
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %19 = load i32, i32* %x.addr, align 4
  %20 = load i32, i32* %width.addr, align 4
  %add = add nsw i32 %19, %20
  %cmp35 = icmp slt i32 %add, 0
  br i1 %cmp35, label %if.then.39, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %do.end.34
  %21 = load i32, i32* %x.addr, align 4
  %22 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %width37 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %22, i32 0, i32 3
  %23 = load i32, i32* %width37, align 4
  %cmp38 = icmp sge i32 %21, %23
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %lor.lhs.false.36, %do.end.34
  br label %return

if.end.40:                                        ; preds = %lor.lhs.false.36
  %24 = load i32, i32* %y.addr, align 4
  %25 = load i32, i32* %height.addr, align 4
  %add41 = add nsw i32 %24, %25
  %cmp42 = icmp slt i32 %add41, 0
  br i1 %cmp42, label %if.then.46, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %if.end.40
  %26 = load i32, i32* %y.addr, align 4
  %27 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %height44 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %27, i32 0, i32 4
  %28 = load i32, i32* %height44, align 4
  %cmp45 = icmp sge i32 %26, %28
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %lor.lhs.false.43, %if.end.40
  br label %return

if.end.47:                                        ; preds = %lor.lhs.false.43
  %29 = load i32, i32* %x.addr, align 4
  %cmp48 = icmp slt i32 %29, 0
  br i1 %cmp48, label %if.then.49, label %if.end.53

if.then.49:                                       ; preds = %if.end.47
  %30 = load i32, i32* %type.addr, align 4
  %call51 = call i32 @gimp_preview_area_image_type_bytes(i32 %30)
  store i32 %call51, i32* %bpp, align 4
  %31 = load i32, i32* %x.addr, align 4
  %32 = load i32, i32* %bpp, align 4
  %mul = mul nsw i32 %31, %32
  %33 = load i8*, i8** %buf.addr, align 8
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %idx.neg
  store i8* %add.ptr, i8** %buf.addr, align 8
  %34 = load i32, i32* %x.addr, align 4
  %35 = load i32, i32* %width.addr, align 4
  %add52 = add nsw i32 %35, %34
  store i32 %add52, i32* %width.addr, align 4
  store i32 0, i32* %x.addr, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.49, %if.end.47
  %36 = load i32, i32* %x.addr, align 4
  %37 = load i32, i32* %width.addr, align 4
  %add54 = add nsw i32 %36, %37
  %38 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %width55 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %38, i32 0, i32 3
  %39 = load i32, i32* %width55, align 4
  %cmp56 = icmp sgt i32 %add54, %39
  br i1 %cmp56, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.end.53
  %40 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %width58 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %40, i32 0, i32 3
  %41 = load i32, i32* %width58, align 4
  %42 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 %41, %42
  store i32 %sub, i32* %width.addr, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.end.53
  %43 = load i32, i32* %y.addr, align 4
  %cmp60 = icmp slt i32 %43, 0
  br i1 %cmp60, label %if.then.61, label %if.end.67

if.then.61:                                       ; preds = %if.end.59
  %44 = load i32, i32* %y.addr, align 4
  %45 = load i32, i32* %rowstride.addr, align 4
  %mul62 = mul nsw i32 %44, %45
  %46 = load i8*, i8** %buf.addr, align 8
  %idx.ext63 = sext i32 %mul62 to i64
  %idx.neg64 = sub i64 0, %idx.ext63
  %add.ptr65 = getelementptr inbounds i8, i8* %46, i64 %idx.neg64
  store i8* %add.ptr65, i8** %buf.addr, align 8
  %47 = load i32, i32* %y.addr, align 4
  %48 = load i32, i32* %height.addr, align 4
  %add66 = add nsw i32 %48, %47
  store i32 %add66, i32* %height.addr, align 4
  store i32 0, i32* %y.addr, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.61, %if.end.59
  %49 = load i32, i32* %y.addr, align 4
  %50 = load i32, i32* %height.addr, align 4
  %add68 = add nsw i32 %49, %50
  %51 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %height69 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %51, i32 0, i32 4
  %52 = load i32, i32* %height69, align 4
  %cmp70 = icmp sgt i32 %add68, %52
  br i1 %cmp70, label %if.then.71, label %if.end.74

if.then.71:                                       ; preds = %if.end.67
  %53 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %height72 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %53, i32 0, i32 4
  %54 = load i32, i32* %height72, align 4
  %55 = load i32, i32* %y.addr, align 4
  %sub73 = sub nsw i32 %54, %55
  store i32 %sub73, i32* %height.addr, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.71, %if.end.67
  %56 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %buf75 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %56, i32 0, i32 10
  %57 = load i8*, i8** %buf75, align 8
  %tobool76 = icmp ne i8* %57, null
  br i1 %tobool76, label %if.end.87, label %if.then.77

if.then.77:                                       ; preds = %if.end.74
  %58 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %width78 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %58, i32 0, i32 3
  %59 = load i32, i32* %width78, align 4
  %mul79 = mul nsw i32 %59, 3
  %add80 = add nsw i32 %mul79, 3
  %and = and i32 %add80, -4
  %60 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %rowstride81 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %60, i32 0, i32 5
  store i32 %and, i32* %rowstride81, align 4
  %61 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %rowstride82 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %61, i32 0, i32 5
  %62 = load i32, i32* %rowstride82, align 4
  %63 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %height83 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %63, i32 0, i32 4
  %64 = load i32, i32* %height83, align 4
  %mul84 = mul nsw i32 %62, %64
  %conv = sext i32 %mul84 to i64
  %call85 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  %65 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %buf86 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %65, i32 0, i32 10
  store i8* %call85, i8** %buf86, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.77, %if.end.74
  %66 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %check_size = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %66, i32 0, i32 1
  %67 = load i32, i32* %check_size, align 4
  %add88 = add i32 2, %67
  %shl = shl i32 1, %add88
  store i32 %shl, i32* %size, align 4
  %68 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %check_type = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %68, i32 0, i32 2
  %69 = load i32, i32* %check_type, align 4
  call void @gimp_checks_get_shades(i32 %69, i8* %light, i8* %dark)
  %70 = load i8*, i8** %buf.addr, align 8
  store i8* %70, i8** %src, align 8
  %71 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %buf89 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %71, i32 0, i32 10
  %72 = load i8*, i8** %buf89, align 8
  %73 = load i32, i32* %x.addr, align 4
  %mul90 = mul nsw i32 %73, 3
  %idx.ext91 = sext i32 %mul90 to i64
  %add.ptr92 = getelementptr inbounds i8, i8* %72, i64 %idx.ext91
  %74 = load i32, i32* %y.addr, align 4
  %75 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %rowstride93 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %75, i32 0, i32 5
  %76 = load i32, i32* %rowstride93, align 4
  %mul94 = mul nsw i32 %74, %76
  %idx.ext95 = sext i32 %mul94 to i64
  %add.ptr96 = getelementptr inbounds i8, i8* %add.ptr92, i64 %idx.ext95
  store i8* %add.ptr96, i8** %dest, align 8
  %77 = load i32, i32* %type.addr, align 4
  switch i32 %77, label %sw.epilog.483 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.106
    i32 2, label %sw.bb.197
    i32 3, label %sw.bb.226
    i32 4, label %sw.bb.314
    i32 5, label %sw.bb.361
  ]

sw.bb:                                            ; preds = %if.end.87
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %78 = load i32, i32* %row, align 4
  %79 = load i32, i32* %height.addr, align 4
  %cmp97 = icmp slt i32 %78, %79
  br i1 %cmp97, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %80 = load i8*, i8** %dest, align 8
  %81 = load i8*, i8** %src, align 8
  %82 = load i32, i32* %width.addr, align 4
  %mul99 = mul nsw i32 3, %82
  %conv100 = sext i32 %mul99 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* %81, i64 %conv100, i32 1, i1 false)
  %83 = load i32, i32* %rowstride.addr, align 4
  %84 = load i8*, i8** %src, align 8
  %idx.ext101 = sext i32 %83 to i64
  %add.ptr102 = getelementptr inbounds i8, i8* %84, i64 %idx.ext101
  store i8* %add.ptr102, i8** %src, align 8
  %85 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %rowstride103 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %85, i32 0, i32 5
  %86 = load i32, i32* %rowstride103, align 4
  %87 = load i8*, i8** %dest, align 8
  %idx.ext104 = sext i32 %86 to i64
  %add.ptr105 = getelementptr inbounds i8, i8* %87, i64 %idx.ext104
  store i8* %add.ptr105, i8** %dest, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %88 = load i32, i32* %row, align 4
  %inc = add nsw i32 %88, 1
  store i32 %inc, i32* %row, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog.483

sw.bb.106:                                        ; preds = %if.end.87
  %89 = load i32, i32* %y.addr, align 4
  store i32 %89, i32* %row, align 4
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.194, %sw.bb.106
  %90 = load i32, i32* %row, align 4
  %91 = load i32, i32* %y.addr, align 4
  %92 = load i32, i32* %height.addr, align 4
  %add108 = add nsw i32 %91, %92
  %cmp109 = icmp slt i32 %90, %add108
  br i1 %cmp109, label %for.body.111, label %for.end.196

for.body.111:                                     ; preds = %for.cond.107
  %93 = load i8*, i8** %src, align 8
  store i8* %93, i8** %s, align 8
  %94 = load i8*, i8** %dest, align 8
  store i8* %94, i8** %d, align 8
  %95 = load i32, i32* %x.addr, align 4
  store i32 %95, i32* %col, align 4
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.184, %for.body.111
  %96 = load i32, i32* %col, align 4
  %97 = load i32, i32* %x.addr, align 4
  %98 = load i32, i32* %width.addr, align 4
  %add115 = add nsw i32 %97, %98
  %cmp116 = icmp slt i32 %96, %add115
  br i1 %cmp116, label %for.body.118, label %for.end.188

for.body.118:                                     ; preds = %for.cond.114
  %99 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %99, i64 3
  %100 = load i8, i8* %arrayidx, align 1
  %conv119 = zext i8 %100 to i32
  switch i32 %conv119, label %sw.default [
    i32 0, label %sw.bb.120
    i32 255, label %sw.bb.132
  ]

sw.bb.120:                                        ; preds = %for.body.118
  %101 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %101, i32 0, i32 7
  %102 = load i32, i32* %offset_y, align 4
  %103 = load i32, i32* %row, align 4
  %add121 = add nsw i32 %102, %103
  %104 = load i32, i32* %size, align 4
  %and122 = and i32 %add121, %104
  %105 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %105, i32 0, i32 6
  %106 = load i32, i32* %offset_x, align 4
  %107 = load i32, i32* %col, align 4
  %add123 = add nsw i32 %106, %107
  %108 = load i32, i32* %size, align 4
  %and124 = and i32 %add123, %108
  %xor = xor i32 %and122, %and124
  %tobool125 = icmp ne i32 %xor, 0
  br i1 %tobool125, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.120
  %109 = load i8, i8* %dark, align 1
  %conv126 = zext i8 %109 to i32
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.120
  %110 = load i8, i8* %light, align 1
  %conv127 = zext i8 %110 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv126, %cond.true ], [ %conv127, %cond.false ]
  %conv128 = trunc i32 %cond to i8
  %111 = load i8*, i8** %d, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %111, i64 2
  store i8 %conv128, i8* %arrayidx129, align 1
  %112 = load i8*, i8** %d, align 8
  %arrayidx130 = getelementptr inbounds i8, i8* %112, i64 1
  store i8 %conv128, i8* %arrayidx130, align 1
  %113 = load i8*, i8** %d, align 8
  %arrayidx131 = getelementptr inbounds i8, i8* %113, i64 0
  store i8 %conv128, i8* %arrayidx131, align 1
  br label %sw.epilog

sw.bb.132:                                        ; preds = %for.body.118
  %114 = load i8*, i8** %s, align 8
  %arrayidx133 = getelementptr inbounds i8, i8* %114, i64 0
  %115 = load i8, i8* %arrayidx133, align 1
  %116 = load i8*, i8** %d, align 8
  %arrayidx134 = getelementptr inbounds i8, i8* %116, i64 0
  store i8 %115, i8* %arrayidx134, align 1
  %117 = load i8*, i8** %s, align 8
  %arrayidx135 = getelementptr inbounds i8, i8* %117, i64 1
  %118 = load i8, i8* %arrayidx135, align 1
  %119 = load i8*, i8** %d, align 8
  %arrayidx136 = getelementptr inbounds i8, i8* %119, i64 1
  store i8 %118, i8* %arrayidx136, align 1
  %120 = load i8*, i8** %s, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %120, i64 2
  %121 = load i8, i8* %arrayidx137, align 1
  %122 = load i8*, i8** %d, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %122, i64 2
  store i8 %121, i8* %arrayidx138, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %for.body.118
  %123 = load i8*, i8** %s, align 8
  %arrayidx140 = getelementptr inbounds i8, i8* %123, i64 3
  %124 = load i8, i8* %arrayidx140, align 1
  %conv141 = zext i8 %124 to i32
  %add142 = add nsw i32 %conv141, 1
  store i32 %add142, i32* %alpha, align 4
  %125 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_y144 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %125, i32 0, i32 7
  %126 = load i32, i32* %offset_y144, align 4
  %127 = load i32, i32* %row, align 4
  %add145 = add nsw i32 %126, %127
  %128 = load i32, i32* %size, align 4
  %and146 = and i32 %add145, %128
  %129 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_x147 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %129, i32 0, i32 6
  %130 = load i32, i32* %offset_x147, align 4
  %131 = load i32, i32* %col, align 4
  %add148 = add nsw i32 %130, %131
  %132 = load i32, i32* %size, align 4
  %and149 = and i32 %add148, %132
  %xor150 = xor i32 %and146, %and149
  %tobool151 = icmp ne i32 %xor150, 0
  br i1 %tobool151, label %cond.true.152, label %cond.false.154

cond.true.152:                                    ; preds = %sw.default
  %133 = load i8, i8* %dark, align 1
  %conv153 = zext i8 %133 to i32
  br label %cond.end.156

cond.false.154:                                   ; preds = %sw.default
  %134 = load i8, i8* %light, align 1
  %conv155 = zext i8 %134 to i32
  br label %cond.end.156

cond.end.156:                                     ; preds = %cond.false.154, %cond.true.152
  %cond157 = phi i32 [ %conv153, %cond.true.152 ], [ %conv155, %cond.false.154 ]
  store i32 %cond157, i32* %check, align 4
  %135 = load i32, i32* %check, align 4
  %shl158 = shl i32 %135, 8
  %136 = load i8*, i8** %s, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %136, i64 0
  %137 = load i8, i8* %arrayidx159, align 1
  %conv160 = zext i8 %137 to i32
  %138 = load i32, i32* %check, align 4
  %sub161 = sub i32 %conv160, %138
  %139 = load i32, i32* %alpha, align 4
  %mul162 = mul i32 %sub161, %139
  %add163 = add i32 %shl158, %mul162
  %shr = lshr i32 %add163, 8
  %conv164 = trunc i32 %shr to i8
  %140 = load i8*, i8** %d, align 8
  %arrayidx165 = getelementptr inbounds i8, i8* %140, i64 0
  store i8 %conv164, i8* %arrayidx165, align 1
  %141 = load i32, i32* %check, align 4
  %shl166 = shl i32 %141, 8
  %142 = load i8*, i8** %s, align 8
  %arrayidx167 = getelementptr inbounds i8, i8* %142, i64 1
  %143 = load i8, i8* %arrayidx167, align 1
  %conv168 = zext i8 %143 to i32
  %144 = load i32, i32* %check, align 4
  %sub169 = sub i32 %conv168, %144
  %145 = load i32, i32* %alpha, align 4
  %mul170 = mul i32 %sub169, %145
  %add171 = add i32 %shl166, %mul170
  %shr172 = lshr i32 %add171, 8
  %conv173 = trunc i32 %shr172 to i8
  %146 = load i8*, i8** %d, align 8
  %arrayidx174 = getelementptr inbounds i8, i8* %146, i64 1
  store i8 %conv173, i8* %arrayidx174, align 1
  %147 = load i32, i32* %check, align 4
  %shl175 = shl i32 %147, 8
  %148 = load i8*, i8** %s, align 8
  %arrayidx176 = getelementptr inbounds i8, i8* %148, i64 2
  %149 = load i8, i8* %arrayidx176, align 1
  %conv177 = zext i8 %149 to i32
  %150 = load i32, i32* %check, align 4
  %sub178 = sub i32 %conv177, %150
  %151 = load i32, i32* %alpha, align 4
  %mul179 = mul i32 %sub178, %151
  %add180 = add i32 %shl175, %mul179
  %shr181 = lshr i32 %add180, 8
  %conv182 = trunc i32 %shr181 to i8
  %152 = load i8*, i8** %d, align 8
  %arrayidx183 = getelementptr inbounds i8, i8* %152, i64 2
  store i8 %conv182, i8* %arrayidx183, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.156, %sw.bb.132, %cond.end
  br label %for.inc.184

for.inc.184:                                      ; preds = %sw.epilog
  %153 = load i32, i32* %col, align 4
  %inc185 = add nsw i32 %153, 1
  store i32 %inc185, i32* %col, align 4
  %154 = load i8*, i8** %s, align 8
  %add.ptr186 = getelementptr inbounds i8, i8* %154, i64 4
  store i8* %add.ptr186, i8** %s, align 8
  %155 = load i8*, i8** %d, align 8
  %add.ptr187 = getelementptr inbounds i8, i8* %155, i64 3
  store i8* %add.ptr187, i8** %d, align 8
  br label %for.cond.114

for.end.188:                                      ; preds = %for.cond.114
  %156 = load i32, i32* %rowstride.addr, align 4
  %157 = load i8*, i8** %src, align 8
  %idx.ext189 = sext i32 %156 to i64
  %add.ptr190 = getelementptr inbounds i8, i8* %157, i64 %idx.ext189
  store i8* %add.ptr190, i8** %src, align 8
  %158 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %rowstride191 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %158, i32 0, i32 5
  %159 = load i32, i32* %rowstride191, align 4
  %160 = load i8*, i8** %dest, align 8
  %idx.ext192 = sext i32 %159 to i64
  %add.ptr193 = getelementptr inbounds i8, i8* %160, i64 %idx.ext192
  store i8* %add.ptr193, i8** %dest, align 8
  br label %for.inc.194

for.inc.194:                                      ; preds = %for.end.188
  %161 = load i32, i32* %row, align 4
  %inc195 = add nsw i32 %161, 1
  store i32 %inc195, i32* %row, align 4
  br label %for.cond.107

for.end.196:                                      ; preds = %for.cond.107
  br label %sw.epilog.483

sw.bb.197:                                        ; preds = %if.end.87
  store i32 0, i32* %row, align 4
  br label %for.cond.198

for.cond.198:                                     ; preds = %for.inc.223, %sw.bb.197
  %162 = load i32, i32* %row, align 4
  %163 = load i32, i32* %height.addr, align 4
  %cmp199 = icmp slt i32 %162, %163
  br i1 %cmp199, label %for.body.201, label %for.end.225

for.body.201:                                     ; preds = %for.cond.198
  %164 = load i8*, i8** %src, align 8
  store i8* %164, i8** %s203, align 8
  %165 = load i8*, i8** %dest, align 8
  store i8* %165, i8** %d205, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond.206

for.cond.206:                                     ; preds = %for.inc.214, %for.body.201
  %166 = load i32, i32* %col, align 4
  %167 = load i32, i32* %width.addr, align 4
  %cmp207 = icmp slt i32 %166, %167
  br i1 %cmp207, label %for.body.209, label %for.end.217

for.body.209:                                     ; preds = %for.cond.206
  %168 = load i8*, i8** %s203, align 8
  %arrayidx210 = getelementptr inbounds i8, i8* %168, i64 0
  %169 = load i8, i8* %arrayidx210, align 1
  %170 = load i8*, i8** %d205, align 8
  %arrayidx211 = getelementptr inbounds i8, i8* %170, i64 2
  store i8 %169, i8* %arrayidx211, align 1
  %171 = load i8*, i8** %d205, align 8
  %arrayidx212 = getelementptr inbounds i8, i8* %171, i64 1
  store i8 %169, i8* %arrayidx212, align 1
  %172 = load i8*, i8** %d205, align 8
  %arrayidx213 = getelementptr inbounds i8, i8* %172, i64 0
  store i8 %169, i8* %arrayidx213, align 1
  br label %for.inc.214

for.inc.214:                                      ; preds = %for.body.209
  %173 = load i32, i32* %col, align 4
  %inc215 = add nsw i32 %173, 1
  store i32 %inc215, i32* %col, align 4
  %174 = load i8*, i8** %s203, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %incdec.ptr, i8** %s203, align 8
  %175 = load i8*, i8** %d205, align 8
  %add.ptr216 = getelementptr inbounds i8, i8* %175, i64 3
  store i8* %add.ptr216, i8** %d205, align 8
  br label %for.cond.206

for.end.217:                                      ; preds = %for.cond.206
  %176 = load i32, i32* %rowstride.addr, align 4
  %177 = load i8*, i8** %src, align 8
  %idx.ext218 = sext i32 %176 to i64
  %add.ptr219 = getelementptr inbounds i8, i8* %177, i64 %idx.ext218
  store i8* %add.ptr219, i8** %src, align 8
  %178 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %rowstride220 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %178, i32 0, i32 5
  %179 = load i32, i32* %rowstride220, align 4
  %180 = load i8*, i8** %dest, align 8
  %idx.ext221 = sext i32 %179 to i64
  %add.ptr222 = getelementptr inbounds i8, i8* %180, i64 %idx.ext221
  store i8* %add.ptr222, i8** %dest, align 8
  br label %for.inc.223

for.inc.223:                                      ; preds = %for.end.217
  %181 = load i32, i32* %row, align 4
  %inc224 = add nsw i32 %181, 1
  store i32 %inc224, i32* %row, align 4
  br label %for.cond.198

for.end.225:                                      ; preds = %for.cond.198
  br label %sw.epilog.483

sw.bb.226:                                        ; preds = %if.end.87
  %182 = load i32, i32* %y.addr, align 4
  store i32 %182, i32* %row, align 4
  br label %for.cond.227

for.cond.227:                                     ; preds = %for.inc.311, %sw.bb.226
  %183 = load i32, i32* %row, align 4
  %184 = load i32, i32* %y.addr, align 4
  %185 = load i32, i32* %height.addr, align 4
  %add228 = add nsw i32 %184, %185
  %cmp229 = icmp slt i32 %183, %add228
  br i1 %cmp229, label %for.body.231, label %for.end.313

for.body.231:                                     ; preds = %for.cond.227
  %186 = load i8*, i8** %src, align 8
  store i8* %186, i8** %s233, align 8
  %187 = load i8*, i8** %dest, align 8
  store i8* %187, i8** %d235, align 8
  %188 = load i32, i32* %x.addr, align 4
  store i32 %188, i32* %col, align 4
  br label %for.cond.236

for.cond.236:                                     ; preds = %for.inc.301, %for.body.231
  %189 = load i32, i32* %col, align 4
  %190 = load i32, i32* %x.addr, align 4
  %191 = load i32, i32* %width.addr, align 4
  %add237 = add nsw i32 %190, %191
  %cmp238 = icmp slt i32 %189, %add237
  br i1 %cmp238, label %for.body.240, label %for.end.305

for.body.240:                                     ; preds = %for.cond.236
  %192 = load i8*, i8** %s233, align 8
  %arrayidx241 = getelementptr inbounds i8, i8* %192, i64 1
  %193 = load i8, i8* %arrayidx241, align 1
  %conv242 = zext i8 %193 to i32
  switch i32 %conv242, label %sw.default.267 [
    i32 0, label %sw.bb.243
    i32 255, label %sw.bb.262
  ]

sw.bb.243:                                        ; preds = %for.body.240
  %194 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_y244 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %194, i32 0, i32 7
  %195 = load i32, i32* %offset_y244, align 4
  %196 = load i32, i32* %row, align 4
  %add245 = add nsw i32 %195, %196
  %197 = load i32, i32* %size, align 4
  %and246 = and i32 %add245, %197
  %198 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_x247 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %198, i32 0, i32 6
  %199 = load i32, i32* %offset_x247, align 4
  %200 = load i32, i32* %col, align 4
  %add248 = add nsw i32 %199, %200
  %201 = load i32, i32* %size, align 4
  %and249 = and i32 %add248, %201
  %xor250 = xor i32 %and246, %and249
  %tobool251 = icmp ne i32 %xor250, 0
  br i1 %tobool251, label %cond.true.252, label %cond.false.254

cond.true.252:                                    ; preds = %sw.bb.243
  %202 = load i8, i8* %dark, align 1
  %conv253 = zext i8 %202 to i32
  br label %cond.end.256

cond.false.254:                                   ; preds = %sw.bb.243
  %203 = load i8, i8* %light, align 1
  %conv255 = zext i8 %203 to i32
  br label %cond.end.256

cond.end.256:                                     ; preds = %cond.false.254, %cond.true.252
  %cond257 = phi i32 [ %conv253, %cond.true.252 ], [ %conv255, %cond.false.254 ]
  %conv258 = trunc i32 %cond257 to i8
  %204 = load i8*, i8** %d235, align 8
  %arrayidx259 = getelementptr inbounds i8, i8* %204, i64 2
  store i8 %conv258, i8* %arrayidx259, align 1
  %205 = load i8*, i8** %d235, align 8
  %arrayidx260 = getelementptr inbounds i8, i8* %205, i64 1
  store i8 %conv258, i8* %arrayidx260, align 1
  %206 = load i8*, i8** %d235, align 8
  %arrayidx261 = getelementptr inbounds i8, i8* %206, i64 0
  store i8 %conv258, i8* %arrayidx261, align 1
  br label %sw.epilog.300

sw.bb.262:                                        ; preds = %for.body.240
  %207 = load i8*, i8** %s233, align 8
  %arrayidx263 = getelementptr inbounds i8, i8* %207, i64 0
  %208 = load i8, i8* %arrayidx263, align 1
  %209 = load i8*, i8** %d235, align 8
  %arrayidx264 = getelementptr inbounds i8, i8* %209, i64 2
  store i8 %208, i8* %arrayidx264, align 1
  %210 = load i8*, i8** %d235, align 8
  %arrayidx265 = getelementptr inbounds i8, i8* %210, i64 1
  store i8 %208, i8* %arrayidx265, align 1
  %211 = load i8*, i8** %d235, align 8
  %arrayidx266 = getelementptr inbounds i8, i8* %211, i64 0
  store i8 %208, i8* %arrayidx266, align 1
  br label %sw.epilog.300

sw.default.267:                                   ; preds = %for.body.240
  %212 = load i8*, i8** %s233, align 8
  %arrayidx270 = getelementptr inbounds i8, i8* %212, i64 1
  %213 = load i8, i8* %arrayidx270, align 1
  %conv271 = zext i8 %213 to i32
  %add272 = add nsw i32 %conv271, 1
  store i32 %add272, i32* %alpha269, align 4
  %214 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_y275 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %214, i32 0, i32 7
  %215 = load i32, i32* %offset_y275, align 4
  %216 = load i32, i32* %row, align 4
  %add276 = add nsw i32 %215, %216
  %217 = load i32, i32* %size, align 4
  %and277 = and i32 %add276, %217
  %218 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_x278 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %218, i32 0, i32 6
  %219 = load i32, i32* %offset_x278, align 4
  %220 = load i32, i32* %col, align 4
  %add279 = add nsw i32 %219, %220
  %221 = load i32, i32* %size, align 4
  %and280 = and i32 %add279, %221
  %xor281 = xor i32 %and277, %and280
  %tobool282 = icmp ne i32 %xor281, 0
  br i1 %tobool282, label %cond.true.283, label %cond.false.285

cond.true.283:                                    ; preds = %sw.default.267
  %222 = load i8, i8* %dark, align 1
  %conv284 = zext i8 %222 to i32
  br label %cond.end.287

cond.false.285:                                   ; preds = %sw.default.267
  %223 = load i8, i8* %light, align 1
  %conv286 = zext i8 %223 to i32
  br label %cond.end.287

cond.end.287:                                     ; preds = %cond.false.285, %cond.true.283
  %cond288 = phi i32 [ %conv284, %cond.true.283 ], [ %conv286, %cond.false.285 ]
  store i32 %cond288, i32* %check274, align 4
  %224 = load i32, i32* %check274, align 4
  %shl289 = shl i32 %224, 8
  %225 = load i8*, i8** %s233, align 8
  %arrayidx290 = getelementptr inbounds i8, i8* %225, i64 0
  %226 = load i8, i8* %arrayidx290, align 1
  %conv291 = zext i8 %226 to i32
  %227 = load i32, i32* %check274, align 4
  %sub292 = sub i32 %conv291, %227
  %228 = load i32, i32* %alpha269, align 4
  %mul293 = mul i32 %sub292, %228
  %add294 = add i32 %shl289, %mul293
  %shr295 = lshr i32 %add294, 8
  %conv296 = trunc i32 %shr295 to i8
  %229 = load i8*, i8** %d235, align 8
  %arrayidx297 = getelementptr inbounds i8, i8* %229, i64 2
  store i8 %conv296, i8* %arrayidx297, align 1
  %230 = load i8*, i8** %d235, align 8
  %arrayidx298 = getelementptr inbounds i8, i8* %230, i64 1
  store i8 %conv296, i8* %arrayidx298, align 1
  %231 = load i8*, i8** %d235, align 8
  %arrayidx299 = getelementptr inbounds i8, i8* %231, i64 0
  store i8 %conv296, i8* %arrayidx299, align 1
  br label %sw.epilog.300

sw.epilog.300:                                    ; preds = %cond.end.287, %sw.bb.262, %cond.end.256
  br label %for.inc.301

for.inc.301:                                      ; preds = %sw.epilog.300
  %232 = load i32, i32* %col, align 4
  %inc302 = add nsw i32 %232, 1
  store i32 %inc302, i32* %col, align 4
  %233 = load i8*, i8** %s233, align 8
  %add.ptr303 = getelementptr inbounds i8, i8* %233, i64 2
  store i8* %add.ptr303, i8** %s233, align 8
  %234 = load i8*, i8** %d235, align 8
  %add.ptr304 = getelementptr inbounds i8, i8* %234, i64 3
  store i8* %add.ptr304, i8** %d235, align 8
  br label %for.cond.236

for.end.305:                                      ; preds = %for.cond.236
  %235 = load i32, i32* %rowstride.addr, align 4
  %236 = load i8*, i8** %src, align 8
  %idx.ext306 = sext i32 %235 to i64
  %add.ptr307 = getelementptr inbounds i8, i8* %236, i64 %idx.ext306
  store i8* %add.ptr307, i8** %src, align 8
  %237 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %rowstride308 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %237, i32 0, i32 5
  %238 = load i32, i32* %rowstride308, align 4
  %239 = load i8*, i8** %dest, align 8
  %idx.ext309 = sext i32 %238 to i64
  %add.ptr310 = getelementptr inbounds i8, i8* %239, i64 %idx.ext309
  store i8* %add.ptr310, i8** %dest, align 8
  br label %for.inc.311

for.inc.311:                                      ; preds = %for.end.305
  %240 = load i32, i32* %row, align 4
  %inc312 = add nsw i32 %240, 1
  store i32 %inc312, i32* %row, align 4
  br label %for.cond.227

for.end.313:                                      ; preds = %for.cond.227
  br label %sw.epilog.483

sw.bb.314:                                        ; preds = %if.end.87
  br label %do.body.315

do.body.315:                                      ; preds = %sw.bb.314
  %241 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %colormap = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %241, i32 0, i32 11
  %242 = load i8*, i8** %colormap, align 8
  %cmp316 = icmp ne i8* %242, null
  br i1 %cmp316, label %if.then.318, label %if.else.319

if.then.318:                                      ; preds = %do.body.315
  br label %if.end.320

if.else.319:                                      ; preds = %do.body.315
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_preview_area_draw, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.320:                                       ; preds = %if.then.318
  br label %do.end.321

do.end.321:                                       ; preds = %if.end.320
  store i32 0, i32* %row, align 4
  br label %for.cond.322

for.cond.322:                                     ; preds = %for.inc.358, %do.end.321
  %243 = load i32, i32* %row, align 4
  %244 = load i32, i32* %height.addr, align 4
  %cmp323 = icmp slt i32 %243, %244
  br i1 %cmp323, label %for.body.325, label %for.end.360

for.body.325:                                     ; preds = %for.cond.322
  %245 = load i8*, i8** %src, align 8
  store i8* %245, i8** %s327, align 8
  %246 = load i8*, i8** %dest, align 8
  store i8* %246, i8** %d329, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond.330

for.cond.330:                                     ; preds = %for.inc.348, %for.body.325
  %247 = load i32, i32* %col, align 4
  %248 = load i32, i32* %width.addr, align 4
  %cmp331 = icmp slt i32 %247, %248
  br i1 %cmp331, label %for.body.333, label %for.end.352

for.body.333:                                     ; preds = %for.cond.330
  %249 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %colormap336 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %249, i32 0, i32 11
  %250 = load i8*, i8** %colormap336, align 8
  %251 = load i8*, i8** %s327, align 8
  %arrayidx337 = getelementptr inbounds i8, i8* %251, i64 0
  %252 = load i8, i8* %arrayidx337, align 1
  %conv338 = zext i8 %252 to i32
  %mul339 = mul nsw i32 3, %conv338
  %idx.ext340 = sext i32 %mul339 to i64
  %add.ptr341 = getelementptr inbounds i8, i8* %250, i64 %idx.ext340
  store i8* %add.ptr341, i8** %colormap335, align 8
  %253 = load i8*, i8** %colormap335, align 8
  %arrayidx342 = getelementptr inbounds i8, i8* %253, i64 0
  %254 = load i8, i8* %arrayidx342, align 1
  %255 = load i8*, i8** %d329, align 8
  %arrayidx343 = getelementptr inbounds i8, i8* %255, i64 0
  store i8 %254, i8* %arrayidx343, align 1
  %256 = load i8*, i8** %colormap335, align 8
  %arrayidx344 = getelementptr inbounds i8, i8* %256, i64 1
  %257 = load i8, i8* %arrayidx344, align 1
  %258 = load i8*, i8** %d329, align 8
  %arrayidx345 = getelementptr inbounds i8, i8* %258, i64 1
  store i8 %257, i8* %arrayidx345, align 1
  %259 = load i8*, i8** %colormap335, align 8
  %arrayidx346 = getelementptr inbounds i8, i8* %259, i64 2
  %260 = load i8, i8* %arrayidx346, align 1
  %261 = load i8*, i8** %d329, align 8
  %arrayidx347 = getelementptr inbounds i8, i8* %261, i64 2
  store i8 %260, i8* %arrayidx347, align 1
  br label %for.inc.348

for.inc.348:                                      ; preds = %for.body.333
  %262 = load i32, i32* %col, align 4
  %inc349 = add nsw i32 %262, 1
  store i32 %inc349, i32* %col, align 4
  %263 = load i8*, i8** %s327, align 8
  %incdec.ptr350 = getelementptr inbounds i8, i8* %263, i32 1
  store i8* %incdec.ptr350, i8** %s327, align 8
  %264 = load i8*, i8** %d329, align 8
  %add.ptr351 = getelementptr inbounds i8, i8* %264, i64 3
  store i8* %add.ptr351, i8** %d329, align 8
  br label %for.cond.330

for.end.352:                                      ; preds = %for.cond.330
  %265 = load i32, i32* %rowstride.addr, align 4
  %266 = load i8*, i8** %src, align 8
  %idx.ext353 = sext i32 %265 to i64
  %add.ptr354 = getelementptr inbounds i8, i8* %266, i64 %idx.ext353
  store i8* %add.ptr354, i8** %src, align 8
  %267 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %rowstride355 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %267, i32 0, i32 5
  %268 = load i32, i32* %rowstride355, align 4
  %269 = load i8*, i8** %dest, align 8
  %idx.ext356 = sext i32 %268 to i64
  %add.ptr357 = getelementptr inbounds i8, i8* %269, i64 %idx.ext356
  store i8* %add.ptr357, i8** %dest, align 8
  br label %for.inc.358

for.inc.358:                                      ; preds = %for.end.352
  %270 = load i32, i32* %row, align 4
  %inc359 = add nsw i32 %270, 1
  store i32 %inc359, i32* %row, align 4
  br label %for.cond.322

for.end.360:                                      ; preds = %for.cond.322
  br label %sw.epilog.483

sw.bb.361:                                        ; preds = %if.end.87
  br label %do.body.362

do.body.362:                                      ; preds = %sw.bb.361
  %271 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %colormap363 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %271, i32 0, i32 11
  %272 = load i8*, i8** %colormap363, align 8
  %cmp364 = icmp ne i8* %272, null
  br i1 %cmp364, label %if.then.366, label %if.else.367

if.then.366:                                      ; preds = %do.body.362
  br label %if.end.368

if.else.367:                                      ; preds = %do.body.362
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_preview_area_draw, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.368:                                       ; preds = %if.then.366
  br label %do.end.369

do.end.369:                                       ; preds = %if.end.368
  %273 = load i32, i32* %y.addr, align 4
  store i32 %273, i32* %row, align 4
  br label %for.cond.370

for.cond.370:                                     ; preds = %for.inc.480, %do.end.369
  %274 = load i32, i32* %row, align 4
  %275 = load i32, i32* %y.addr, align 4
  %276 = load i32, i32* %height.addr, align 4
  %add371 = add nsw i32 %275, %276
  %cmp372 = icmp slt i32 %274, %add371
  br i1 %cmp372, label %for.body.374, label %for.end.482

for.body.374:                                     ; preds = %for.cond.370
  %277 = load i8*, i8** %src, align 8
  store i8* %277, i8** %s376, align 8
  %278 = load i8*, i8** %dest, align 8
  store i8* %278, i8** %d378, align 8
  %279 = load i32, i32* %x.addr, align 4
  store i32 %279, i32* %col, align 4
  br label %for.cond.379

for.cond.379:                                     ; preds = %for.inc.470, %for.body.374
  %280 = load i32, i32* %col, align 4
  %281 = load i32, i32* %x.addr, align 4
  %282 = load i32, i32* %width.addr, align 4
  %add380 = add nsw i32 %281, %282
  %cmp381 = icmp slt i32 %280, %add380
  br i1 %cmp381, label %for.body.383, label %for.end.474

for.body.383:                                     ; preds = %for.cond.379
  %283 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %colormap386 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %283, i32 0, i32 11
  %284 = load i8*, i8** %colormap386, align 8
  %285 = load i8*, i8** %s376, align 8
  %arrayidx387 = getelementptr inbounds i8, i8* %285, i64 0
  %286 = load i8, i8* %arrayidx387, align 1
  %conv388 = zext i8 %286 to i32
  %mul389 = mul nsw i32 3, %conv388
  %idx.ext390 = sext i32 %mul389 to i64
  %add.ptr391 = getelementptr inbounds i8, i8* %284, i64 %idx.ext390
  store i8* %add.ptr391, i8** %colormap385, align 8
  %287 = load i8*, i8** %s376, align 8
  %arrayidx392 = getelementptr inbounds i8, i8* %287, i64 1
  %288 = load i8, i8* %arrayidx392, align 1
  %conv393 = zext i8 %288 to i32
  switch i32 %conv393, label %sw.default.420 [
    i32 0, label %sw.bb.394
    i32 255, label %sw.bb.413
  ]

sw.bb.394:                                        ; preds = %for.body.383
  %289 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_y395 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %289, i32 0, i32 7
  %290 = load i32, i32* %offset_y395, align 4
  %291 = load i32, i32* %row, align 4
  %add396 = add nsw i32 %290, %291
  %292 = load i32, i32* %size, align 4
  %and397 = and i32 %add396, %292
  %293 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_x398 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %293, i32 0, i32 6
  %294 = load i32, i32* %offset_x398, align 4
  %295 = load i32, i32* %col, align 4
  %add399 = add nsw i32 %294, %295
  %296 = load i32, i32* %size, align 4
  %and400 = and i32 %add399, %296
  %xor401 = xor i32 %and397, %and400
  %tobool402 = icmp ne i32 %xor401, 0
  br i1 %tobool402, label %cond.true.403, label %cond.false.405

cond.true.403:                                    ; preds = %sw.bb.394
  %297 = load i8, i8* %dark, align 1
  %conv404 = zext i8 %297 to i32
  br label %cond.end.407

cond.false.405:                                   ; preds = %sw.bb.394
  %298 = load i8, i8* %light, align 1
  %conv406 = zext i8 %298 to i32
  br label %cond.end.407

cond.end.407:                                     ; preds = %cond.false.405, %cond.true.403
  %cond408 = phi i32 [ %conv404, %cond.true.403 ], [ %conv406, %cond.false.405 ]
  %conv409 = trunc i32 %cond408 to i8
  %299 = load i8*, i8** %d378, align 8
  %arrayidx410 = getelementptr inbounds i8, i8* %299, i64 2
  store i8 %conv409, i8* %arrayidx410, align 1
  %300 = load i8*, i8** %d378, align 8
  %arrayidx411 = getelementptr inbounds i8, i8* %300, i64 1
  store i8 %conv409, i8* %arrayidx411, align 1
  %301 = load i8*, i8** %d378, align 8
  %arrayidx412 = getelementptr inbounds i8, i8* %301, i64 0
  store i8 %conv409, i8* %arrayidx412, align 1
  br label %sw.epilog.469

sw.bb.413:                                        ; preds = %for.body.383
  %302 = load i8*, i8** %colormap385, align 8
  %arrayidx414 = getelementptr inbounds i8, i8* %302, i64 0
  %303 = load i8, i8* %arrayidx414, align 1
  %304 = load i8*, i8** %d378, align 8
  %arrayidx415 = getelementptr inbounds i8, i8* %304, i64 0
  store i8 %303, i8* %arrayidx415, align 1
  %305 = load i8*, i8** %colormap385, align 8
  %arrayidx416 = getelementptr inbounds i8, i8* %305, i64 1
  %306 = load i8, i8* %arrayidx416, align 1
  %307 = load i8*, i8** %d378, align 8
  %arrayidx417 = getelementptr inbounds i8, i8* %307, i64 1
  store i8 %306, i8* %arrayidx417, align 1
  %308 = load i8*, i8** %colormap385, align 8
  %arrayidx418 = getelementptr inbounds i8, i8* %308, i64 2
  %309 = load i8, i8* %arrayidx418, align 1
  %310 = load i8*, i8** %d378, align 8
  %arrayidx419 = getelementptr inbounds i8, i8* %310, i64 2
  store i8 %309, i8* %arrayidx419, align 1
  br label %sw.epilog.469

sw.default.420:                                   ; preds = %for.body.383
  %311 = load i8*, i8** %s376, align 8
  %arrayidx423 = getelementptr inbounds i8, i8* %311, i64 3
  %312 = load i8, i8* %arrayidx423, align 1
  %conv424 = zext i8 %312 to i32
  %add425 = add nsw i32 %conv424, 1
  store i32 %add425, i32* %alpha422, align 4
  %313 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_y428 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %313, i32 0, i32 7
  %314 = load i32, i32* %offset_y428, align 4
  %315 = load i32, i32* %row, align 4
  %add429 = add nsw i32 %314, %315
  %316 = load i32, i32* %size, align 4
  %and430 = and i32 %add429, %316
  %317 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_x431 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %317, i32 0, i32 6
  %318 = load i32, i32* %offset_x431, align 4
  %319 = load i32, i32* %col, align 4
  %add432 = add nsw i32 %318, %319
  %320 = load i32, i32* %size, align 4
  %and433 = and i32 %add432, %320
  %xor434 = xor i32 %and430, %and433
  %tobool435 = icmp ne i32 %xor434, 0
  br i1 %tobool435, label %cond.true.436, label %cond.false.438

cond.true.436:                                    ; preds = %sw.default.420
  %321 = load i8, i8* %dark, align 1
  %conv437 = zext i8 %321 to i32
  br label %cond.end.440

cond.false.438:                                   ; preds = %sw.default.420
  %322 = load i8, i8* %light, align 1
  %conv439 = zext i8 %322 to i32
  br label %cond.end.440

cond.end.440:                                     ; preds = %cond.false.438, %cond.true.436
  %cond441 = phi i32 [ %conv437, %cond.true.436 ], [ %conv439, %cond.false.438 ]
  store i32 %cond441, i32* %check427, align 4
  %323 = load i32, i32* %check427, align 4
  %shl442 = shl i32 %323, 8
  %324 = load i8*, i8** %colormap385, align 8
  %arrayidx443 = getelementptr inbounds i8, i8* %324, i64 0
  %325 = load i8, i8* %arrayidx443, align 1
  %conv444 = zext i8 %325 to i32
  %326 = load i32, i32* %check427, align 4
  %sub445 = sub i32 %conv444, %326
  %327 = load i32, i32* %alpha422, align 4
  %mul446 = mul i32 %sub445, %327
  %add447 = add i32 %shl442, %mul446
  %shr448 = lshr i32 %add447, 8
  %conv449 = trunc i32 %shr448 to i8
  %328 = load i8*, i8** %d378, align 8
  %arrayidx450 = getelementptr inbounds i8, i8* %328, i64 0
  store i8 %conv449, i8* %arrayidx450, align 1
  %329 = load i32, i32* %check427, align 4
  %shl451 = shl i32 %329, 8
  %330 = load i8*, i8** %colormap385, align 8
  %arrayidx452 = getelementptr inbounds i8, i8* %330, i64 1
  %331 = load i8, i8* %arrayidx452, align 1
  %conv453 = zext i8 %331 to i32
  %332 = load i32, i32* %check427, align 4
  %sub454 = sub i32 %conv453, %332
  %333 = load i32, i32* %alpha422, align 4
  %mul455 = mul i32 %sub454, %333
  %add456 = add i32 %shl451, %mul455
  %shr457 = lshr i32 %add456, 8
  %conv458 = trunc i32 %shr457 to i8
  %334 = load i8*, i8** %d378, align 8
  %arrayidx459 = getelementptr inbounds i8, i8* %334, i64 1
  store i8 %conv458, i8* %arrayidx459, align 1
  %335 = load i32, i32* %check427, align 4
  %shl460 = shl i32 %335, 8
  %336 = load i8*, i8** %colormap385, align 8
  %arrayidx461 = getelementptr inbounds i8, i8* %336, i64 2
  %337 = load i8, i8* %arrayidx461, align 1
  %conv462 = zext i8 %337 to i32
  %338 = load i32, i32* %check427, align 4
  %sub463 = sub i32 %conv462, %338
  %339 = load i32, i32* %alpha422, align 4
  %mul464 = mul i32 %sub463, %339
  %add465 = add i32 %shl460, %mul464
  %shr466 = lshr i32 %add465, 8
  %conv467 = trunc i32 %shr466 to i8
  %340 = load i8*, i8** %d378, align 8
  %arrayidx468 = getelementptr inbounds i8, i8* %340, i64 2
  store i8 %conv467, i8* %arrayidx468, align 1
  br label %sw.epilog.469

sw.epilog.469:                                    ; preds = %cond.end.440, %sw.bb.413, %cond.end.407
  br label %for.inc.470

for.inc.470:                                      ; preds = %sw.epilog.469
  %341 = load i32, i32* %col, align 4
  %inc471 = add nsw i32 %341, 1
  store i32 %inc471, i32* %col, align 4
  %342 = load i8*, i8** %s376, align 8
  %add.ptr472 = getelementptr inbounds i8, i8* %342, i64 2
  store i8* %add.ptr472, i8** %s376, align 8
  %343 = load i8*, i8** %d378, align 8
  %add.ptr473 = getelementptr inbounds i8, i8* %343, i64 3
  store i8* %add.ptr473, i8** %d378, align 8
  br label %for.cond.379

for.end.474:                                      ; preds = %for.cond.379
  %344 = load i32, i32* %rowstride.addr, align 4
  %345 = load i8*, i8** %src, align 8
  %idx.ext475 = sext i32 %344 to i64
  %add.ptr476 = getelementptr inbounds i8, i8* %345, i64 %idx.ext475
  store i8* %add.ptr476, i8** %src, align 8
  %346 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %rowstride477 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %346, i32 0, i32 5
  %347 = load i32, i32* %rowstride477, align 4
  %348 = load i8*, i8** %dest, align 8
  %idx.ext478 = sext i32 %347 to i64
  %add.ptr479 = getelementptr inbounds i8, i8* %348, i64 %idx.ext478
  store i8* %add.ptr479, i8** %dest, align 8
  br label %for.inc.480

for.inc.480:                                      ; preds = %for.end.474
  %349 = load i32, i32* %row, align 4
  %inc481 = add nsw i32 %349, 1
  store i32 %inc481, i32* %row, align 4
  br label %for.cond.370

for.end.482:                                      ; preds = %for.cond.370
  br label %sw.epilog.483

sw.epilog.483:                                    ; preds = %if.end.87, %for.end.482, %for.end.360, %for.end.313, %for.end.225, %for.end.196, %for.end
  %350 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %351 = load i32, i32* %x.addr, align 4
  %352 = load i32, i32* %y.addr, align 4
  %353 = load i32, i32* %width.addr, align 4
  %354 = load i32, i32* %height.addr, align 4
  call void @gimp_preview_area_queue_draw(%struct._GimpPreviewArea* %350, i32 %351, i32 %352, i32 %353, i32 %354)
  br label %return

return:                                           ; preds = %sw.epilog.483, %if.else.367, %if.else.319, %if.then.46, %if.then.39, %if.else.32, %if.else.26, %if.then.21, %if.else.16, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_preview_area_image_type_bytes(i32 %type) #3 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  switch i32 %0, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb
    i32 3, label %sw.bb.1
    i32 5, label %sw.bb.1
    i32 0, label %sw.bb.2
    i32 1, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry, %entry
  store i32 1, i32* %retval
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry, %entry
  store i32 2, i32* %retval
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i32 3, i32* %retval
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  store i32 4, i32* %retval
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i32 308, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_preview_area_image_type_bytes, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %sw.epilog

do.end:                                           ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %sw.bb.1, %sw.bb.2, %sw.bb.3, %do.body, %do.end
  %1 = load i32, i32* %retval
  ret i32 %1
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_checks_get_shades(i32, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define internal void @gimp_preview_area_queue_draw(%struct._GimpPreviewArea* %area, i32 %x, i32 %y, i32 %width, i32 %height) #3 {
entry:
  %area.addr = alloca %struct._GimpPreviewArea*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %widget = alloca %struct._GtkWidget*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  store %struct._GimpPreviewArea* %area, %struct._GimpPreviewArea** %area.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %1 = bitcast %struct._GimpPreviewArea* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %2, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %3, %struct._GdkRectangle* %allocation)
  %width2 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %4 = load i32, i32* %width2, align 4
  %5 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %width3 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %5, i32 0, i32 3
  %6 = load i32, i32* %width3, align 4
  %sub = sub nsw i32 %4, %6
  %div = sdiv i32 %sub, 2
  %7 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %7, %div
  store i32 %add, i32* %x.addr, align 4
  %height4 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %8 = load i32, i32* %height4, align 4
  %9 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %height5 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %9, i32 0, i32 4
  %10 = load i32, i32* %height5, align 4
  %sub6 = sub nsw i32 %8, %10
  %div7 = sdiv i32 %sub6, 2
  %11 = load i32, i32* %y.addr, align 4
  %add8 = add nsw i32 %11, %div7
  store i32 %add8, i32* %y.addr, align 4
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %13 = load i32, i32* %x.addr, align 4
  %14 = load i32, i32* %y.addr, align 4
  %15 = load i32, i32* %width.addr, align 4
  %16 = load i32, i32* %height.addr, align 4
  call void @gtk_widget_queue_draw_area(%struct._GtkWidget* %12, i32 %13, i32 %14, i32 %15, i32 %16)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_preview_area_blend(%struct._GimpPreviewArea* %area, i32 %x, i32 %y, i32 %width, i32 %height, i32 %type, i8* %buf1, i32 %rowstride1, i8* %buf2, i32 %rowstride2, i8 zeroext %opacity) #3 {
entry:
  %area.addr = alloca %struct._GimpPreviewArea*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %buf1.addr = alloca i8*, align 8
  %rowstride1.addr = alloca i32, align 4
  %buf2.addr = alloca i8*, align 8
  %rowstride2.addr = alloca i32, align 4
  %opacity.addr = alloca i8, align 1
  %src1 = alloca i8*, align 8
  %src2 = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %size = alloca i32, align 4
  %light = alloca i8, align 1
  %dark = alloca i8, align 1
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %bpp = alloca i32, align 4
  %s1 = alloca i8*, align 8
  %s2 = alloca i8*, align 8
  %d = alloca i8*, align 8
  %s1196 = alloca i8*, align 8
  %s2198 = alloca i8*, align 8
  %d200 = alloca i8*, align 8
  %inter = alloca [4 x i8], align 1
  %a = alloca i16, align 2
  %b = alloca i16, align 2
  %alpha = alloca i32, align 4
  %check = alloca i32, align 4
  %s1405 = alloca i8*, align 8
  %s2407 = alloca i8*, align 8
  %d409 = alloca i8*, align 8
  %s1452 = alloca i8*, align 8
  %s2454 = alloca i8*, align 8
  %d456 = alloca i8*, align 8
  %inter463 = alloca [2 x i8], align 1
  %a506 = alloca i16, align 2
  %b514 = alloca i16, align 2
  %alpha565 = alloca i32, align 4
  %check570 = alloca i32, align 4
  %s1626 = alloca i8*, align 8
  %s2628 = alloca i8*, align 8
  %d630 = alloca i8*, align 8
  %cmap1 = alloca i8*, align 8
  %cmap2 = alloca i8*, align 8
  %s1722 = alloca i8*, align 8
  %s2724 = alloca i8*, align 8
  %d726 = alloca i8*, align 8
  %cmap1733 = alloca i8*, align 8
  %cmap2741 = alloca i8*, align 8
  %inter749 = alloca [4 x i8], align 1
  %a824 = alloca i16, align 2
  %b833 = alloca i16, align 2
  %alpha891 = alloca i32, align 4
  %check896 = alloca i32, align 4
  store %struct._GimpPreviewArea* %area, %struct._GimpPreviewArea** %area.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  store i8* %buf1, i8** %buf1.addr, align 8
  store i32 %rowstride1, i32* %rowstride1.addr, align 4
  store i8* %buf2, i8** %buf2.addr, align 8
  store i32 %rowstride2, i32* %rowstride2.addr, align 4
  store i8 %opacity, i8* %opacity.addr, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %1 = bitcast %struct._GimpPreviewArea* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_preview_area_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_preview_area_blend, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %width.addr, align 4
  %cmp12 = icmp sge i32 %13, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %height.addr, align 4
  %cmp14 = icmp sge i32 %14, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_preview_area_blend, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %15 = load i32, i32* %width.addr, align 4
  %cmp19 = icmp eq i32 %15, 0
  br i1 %cmp19, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.18
  %16 = load i32, i32* %height.addr, align 4
  %cmp20 = icmp eq i32 %16, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %lor.lhs.false, %do.end.18
  br label %return

if.end.22:                                        ; preds = %lor.lhs.false
  br label %do.body.23

do.body.23:                                       ; preds = %if.end.22
  %17 = load i8*, i8** %buf1.addr, align 8
  %cmp24 = icmp ne i8* %17, null
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.23
  br label %if.end.27

if.else.26:                                       ; preds = %do.body.23
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_preview_area_blend, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.27:                                        ; preds = %if.then.25
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  br label %do.body.29

do.body.29:                                       ; preds = %do.end.28
  %18 = load i8*, i8** %buf2.addr, align 8
  %cmp30 = icmp ne i8* %18, null
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.29
  br label %if.end.33

if.else.32:                                       ; preds = %do.body.29
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_preview_area_blend, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.33:                                        ; preds = %if.then.31
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  br label %do.body.35

do.body.35:                                       ; preds = %do.end.34
  %19 = load i32, i32* %rowstride1.addr, align 4
  %cmp36 = icmp sgt i32 %19, 0
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body.35
  br label %if.end.39

if.else.38:                                       ; preds = %do.body.35
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_preview_area_blend, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.39:                                        ; preds = %if.then.37
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.40
  %20 = load i32, i32* %rowstride2.addr, align 4
  %cmp42 = icmp sgt i32 %20, 0
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %do.body.41
  br label %if.end.45

if.else.44:                                       ; preds = %do.body.41
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_preview_area_blend, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  %21 = load i8, i8* %opacity.addr, align 1
  %conv = zext i8 %21 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 255, label %sw.bb.47
  ]

sw.bb:                                            ; preds = %do.end.46
  %22 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %23 = load i32, i32* %x.addr, align 4
  %24 = load i32, i32* %y.addr, align 4
  %25 = load i32, i32* %width.addr, align 4
  %26 = load i32, i32* %height.addr, align 4
  %27 = load i32, i32* %type.addr, align 4
  %28 = load i8*, i8** %buf1.addr, align 8
  %29 = load i32, i32* %rowstride1.addr, align 4
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i8* %28, i32 %29)
  br label %return

sw.bb.47:                                         ; preds = %do.end.46
  %30 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %31 = load i32, i32* %x.addr, align 4
  %32 = load i32, i32* %y.addr, align 4
  %33 = load i32, i32* %width.addr, align 4
  %34 = load i32, i32* %height.addr, align 4
  %35 = load i32, i32* %type.addr, align 4
  %36 = load i8*, i8** %buf2.addr, align 8
  %37 = load i32, i32* %rowstride2.addr, align 4
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35, i8* %36, i32 %37)
  br label %return

sw.default:                                       ; preds = %do.end.46
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %38 = load i32, i32* %x.addr, align 4
  %39 = load i32, i32* %width.addr, align 4
  %add = add nsw i32 %38, %39
  %cmp48 = icmp slt i32 %add, 0
  br i1 %cmp48, label %if.then.54, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %sw.epilog
  %40 = load i32, i32* %x.addr, align 4
  %41 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %width51 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %41, i32 0, i32 3
  %42 = load i32, i32* %width51, align 4
  %cmp52 = icmp sge i32 %40, %42
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %lor.lhs.false.50, %sw.epilog
  br label %return

if.end.55:                                        ; preds = %lor.lhs.false.50
  %43 = load i32, i32* %y.addr, align 4
  %44 = load i32, i32* %height.addr, align 4
  %add56 = add nsw i32 %43, %44
  %cmp57 = icmp slt i32 %add56, 0
  br i1 %cmp57, label %if.then.63, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %if.end.55
  %45 = load i32, i32* %y.addr, align 4
  %46 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %height60 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %46, i32 0, i32 4
  %47 = load i32, i32* %height60, align 4
  %cmp61 = icmp sge i32 %45, %47
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %lor.lhs.false.59, %if.end.55
  br label %return

if.end.64:                                        ; preds = %lor.lhs.false.59
  %48 = load i32, i32* %x.addr, align 4
  %cmp65 = icmp slt i32 %48, 0
  br i1 %cmp65, label %if.then.67, label %if.end.75

if.then.67:                                       ; preds = %if.end.64
  %49 = load i32, i32* %type.addr, align 4
  %call69 = call i32 @gimp_preview_area_image_type_bytes(i32 %49)
  store i32 %call69, i32* %bpp, align 4
  %50 = load i32, i32* %x.addr, align 4
  %51 = load i32, i32* %bpp, align 4
  %mul = mul nsw i32 %50, %51
  %52 = load i8*, i8** %buf1.addr, align 8
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %52, i64 %idx.neg
  store i8* %add.ptr, i8** %buf1.addr, align 8
  %53 = load i32, i32* %x.addr, align 4
  %54 = load i32, i32* %bpp, align 4
  %mul70 = mul nsw i32 %53, %54
  %55 = load i8*, i8** %buf2.addr, align 8
  %idx.ext71 = sext i32 %mul70 to i64
  %idx.neg72 = sub i64 0, %idx.ext71
  %add.ptr73 = getelementptr inbounds i8, i8* %55, i64 %idx.neg72
  store i8* %add.ptr73, i8** %buf2.addr, align 8
  %56 = load i32, i32* %x.addr, align 4
  %57 = load i32, i32* %width.addr, align 4
  %add74 = add nsw i32 %57, %56
  store i32 %add74, i32* %width.addr, align 4
  store i32 0, i32* %x.addr, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.67, %if.end.64
  %58 = load i32, i32* %x.addr, align 4
  %59 = load i32, i32* %width.addr, align 4
  %add76 = add nsw i32 %58, %59
  %60 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %width77 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %60, i32 0, i32 3
  %61 = load i32, i32* %width77, align 4
  %cmp78 = icmp sgt i32 %add76, %61
  br i1 %cmp78, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %if.end.75
  %62 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %width81 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %62, i32 0, i32 3
  %63 = load i32, i32* %width81, align 4
  %64 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 %63, %64
  store i32 %sub, i32* %width.addr, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %if.end.75
  %65 = load i32, i32* %y.addr, align 4
  %cmp83 = icmp slt i32 %65, 0
  br i1 %cmp83, label %if.then.85, label %if.end.95

if.then.85:                                       ; preds = %if.end.82
  %66 = load i32, i32* %y.addr, align 4
  %67 = load i32, i32* %rowstride1.addr, align 4
  %mul86 = mul nsw i32 %66, %67
  %68 = load i8*, i8** %buf1.addr, align 8
  %idx.ext87 = sext i32 %mul86 to i64
  %idx.neg88 = sub i64 0, %idx.ext87
  %add.ptr89 = getelementptr inbounds i8, i8* %68, i64 %idx.neg88
  store i8* %add.ptr89, i8** %buf1.addr, align 8
  %69 = load i32, i32* %y.addr, align 4
  %70 = load i32, i32* %rowstride2.addr, align 4
  %mul90 = mul nsw i32 %69, %70
  %71 = load i8*, i8** %buf2.addr, align 8
  %idx.ext91 = sext i32 %mul90 to i64
  %idx.neg92 = sub i64 0, %idx.ext91
  %add.ptr93 = getelementptr inbounds i8, i8* %71, i64 %idx.neg92
  store i8* %add.ptr93, i8** %buf2.addr, align 8
  %72 = load i32, i32* %y.addr, align 4
  %73 = load i32, i32* %height.addr, align 4
  %add94 = add nsw i32 %73, %72
  store i32 %add94, i32* %height.addr, align 4
  store i32 0, i32* %y.addr, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.85, %if.end.82
  %74 = load i32, i32* %y.addr, align 4
  %75 = load i32, i32* %height.addr, align 4
  %add96 = add nsw i32 %74, %75
  %76 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %height97 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %76, i32 0, i32 4
  %77 = load i32, i32* %height97, align 4
  %cmp98 = icmp sgt i32 %add96, %77
  br i1 %cmp98, label %if.then.100, label %if.end.103

if.then.100:                                      ; preds = %if.end.95
  %78 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %height101 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %78, i32 0, i32 4
  %79 = load i32, i32* %height101, align 4
  %80 = load i32, i32* %y.addr, align 4
  %sub102 = sub nsw i32 %79, %80
  store i32 %sub102, i32* %height.addr, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.100, %if.end.95
  %81 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %buf = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %81, i32 0, i32 10
  %82 = load i8*, i8** %buf, align 8
  %tobool104 = icmp ne i8* %82, null
  br i1 %tobool104, label %if.end.115, label %if.then.105

if.then.105:                                      ; preds = %if.end.103
  %83 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %width106 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %83, i32 0, i32 3
  %84 = load i32, i32* %width106, align 4
  %mul107 = mul nsw i32 %84, 3
  %add108 = add nsw i32 %mul107, 3
  %and = and i32 %add108, -4
  %85 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %rowstride = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %85, i32 0, i32 5
  store i32 %and, i32* %rowstride, align 4
  %86 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %rowstride109 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %86, i32 0, i32 5
  %87 = load i32, i32* %rowstride109, align 4
  %88 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %height110 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %88, i32 0, i32 4
  %89 = load i32, i32* %height110, align 4
  %mul111 = mul nsw i32 %87, %89
  %conv112 = sext i32 %mul111 to i64
  %call113 = call noalias i8* @g_malloc_n(i64 %conv112, i64 1)
  %90 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %buf114 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %90, i32 0, i32 10
  store i8* %call113, i8** %buf114, align 8
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.105, %if.end.103
  %91 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %check_size = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %91, i32 0, i32 1
  %92 = load i32, i32* %check_size, align 4
  %add116 = add i32 2, %92
  %shl = shl i32 1, %add116
  store i32 %shl, i32* %size, align 4
  %93 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %check_type = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %93, i32 0, i32 2
  %94 = load i32, i32* %check_type, align 4
  call void @gimp_checks_get_shades(i32 %94, i8* %light, i8* %dark)
  %95 = load i8*, i8** %buf1.addr, align 8
  store i8* %95, i8** %src1, align 8
  %96 = load i8*, i8** %buf2.addr, align 8
  store i8* %96, i8** %src2, align 8
  %97 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %buf117 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %97, i32 0, i32 10
  %98 = load i8*, i8** %buf117, align 8
  %99 = load i32, i32* %x.addr, align 4
  %mul118 = mul nsw i32 %99, 3
  %idx.ext119 = sext i32 %mul118 to i64
  %add.ptr120 = getelementptr inbounds i8, i8* %98, i64 %idx.ext119
  %100 = load i32, i32* %y.addr, align 4
  %101 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %rowstride121 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %101, i32 0, i32 5
  %102 = load i32, i32* %rowstride121, align 4
  %mul122 = mul nsw i32 %100, %102
  %idx.ext123 = sext i32 %mul122 to i64
  %add.ptr124 = getelementptr inbounds i8, i8* %add.ptr120, i64 %idx.ext123
  store i8* %add.ptr124, i8** %dest, align 8
  %103 = load i32, i32* %type.addr, align 4
  switch i32 %103, label %sw.epilog.955 [
    i32 0, label %sw.bb.125
    i32 1, label %sw.bb.189
    i32 2, label %sw.bb.399
    i32 3, label %sw.bb.445
    i32 4, label %sw.bb.613
    i32 5, label %sw.bb.707
  ]

sw.bb.125:                                        ; preds = %if.end.115
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.186, %sw.bb.125
  %104 = load i32, i32* %row, align 4
  %105 = load i32, i32* %height.addr, align 4
  %cmp126 = icmp slt i32 %104, %105
  br i1 %cmp126, label %for.body, label %for.end.188

for.body:                                         ; preds = %for.cond
  %106 = load i8*, i8** %src1, align 8
  store i8* %106, i8** %s1, align 8
  %107 = load i8*, i8** %src2, align 8
  store i8* %107, i8** %s2, align 8
  %108 = load i8*, i8** %dest, align 8
  store i8* %108, i8** %d, align 8
  %109 = load i32, i32* %x.addr, align 4
  store i32 %109, i32* %col, align 4
  br label %for.cond.131

for.cond.131:                                     ; preds = %for.inc, %for.body
  %110 = load i32, i32* %col, align 4
  %111 = load i32, i32* %x.addr, align 4
  %112 = load i32, i32* %width.addr, align 4
  %add132 = add nsw i32 %111, %112
  %cmp133 = icmp slt i32 %110, %add132
  br i1 %cmp133, label %for.body.135, label %for.end

for.body.135:                                     ; preds = %for.cond.131
  %113 = load i8*, i8** %s1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %113, i64 0
  %114 = load i8, i8* %arrayidx, align 1
  %conv136 = zext i8 %114 to i32
  %shl137 = shl i32 %conv136, 8
  %115 = load i8*, i8** %s2, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %115, i64 0
  %116 = load i8, i8* %arrayidx138, align 1
  %conv139 = zext i8 %116 to i32
  %117 = load i8*, i8** %s1, align 8
  %arrayidx140 = getelementptr inbounds i8, i8* %117, i64 0
  %118 = load i8, i8* %arrayidx140, align 1
  %conv141 = zext i8 %118 to i32
  %sub142 = sub nsw i32 %conv139, %conv141
  %119 = load i8, i8* %opacity.addr, align 1
  %conv143 = zext i8 %119 to i32
  %mul144 = mul nsw i32 %sub142, %conv143
  %add145 = add nsw i32 %shl137, %mul144
  %shr = ashr i32 %add145, 8
  %conv146 = trunc i32 %shr to i8
  %120 = load i8*, i8** %d, align 8
  %arrayidx147 = getelementptr inbounds i8, i8* %120, i64 0
  store i8 %conv146, i8* %arrayidx147, align 1
  %121 = load i8*, i8** %s1, align 8
  %arrayidx148 = getelementptr inbounds i8, i8* %121, i64 1
  %122 = load i8, i8* %arrayidx148, align 1
  %conv149 = zext i8 %122 to i32
  %shl150 = shl i32 %conv149, 8
  %123 = load i8*, i8** %s2, align 8
  %arrayidx151 = getelementptr inbounds i8, i8* %123, i64 1
  %124 = load i8, i8* %arrayidx151, align 1
  %conv152 = zext i8 %124 to i32
  %125 = load i8*, i8** %s1, align 8
  %arrayidx153 = getelementptr inbounds i8, i8* %125, i64 1
  %126 = load i8, i8* %arrayidx153, align 1
  %conv154 = zext i8 %126 to i32
  %sub155 = sub nsw i32 %conv152, %conv154
  %127 = load i8, i8* %opacity.addr, align 1
  %conv156 = zext i8 %127 to i32
  %mul157 = mul nsw i32 %sub155, %conv156
  %add158 = add nsw i32 %shl150, %mul157
  %shr159 = ashr i32 %add158, 8
  %conv160 = trunc i32 %shr159 to i8
  %128 = load i8*, i8** %d, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %128, i64 1
  store i8 %conv160, i8* %arrayidx161, align 1
  %129 = load i8*, i8** %s1, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %129, i64 2
  %130 = load i8, i8* %arrayidx162, align 1
  %conv163 = zext i8 %130 to i32
  %shl164 = shl i32 %conv163, 8
  %131 = load i8*, i8** %s2, align 8
  %arrayidx165 = getelementptr inbounds i8, i8* %131, i64 2
  %132 = load i8, i8* %arrayidx165, align 1
  %conv166 = zext i8 %132 to i32
  %133 = load i8*, i8** %s1, align 8
  %arrayidx167 = getelementptr inbounds i8, i8* %133, i64 2
  %134 = load i8, i8* %arrayidx167, align 1
  %conv168 = zext i8 %134 to i32
  %sub169 = sub nsw i32 %conv166, %conv168
  %135 = load i8, i8* %opacity.addr, align 1
  %conv170 = zext i8 %135 to i32
  %mul171 = mul nsw i32 %sub169, %conv170
  %add172 = add nsw i32 %shl164, %mul171
  %shr173 = ashr i32 %add172, 8
  %conv174 = trunc i32 %shr173 to i8
  %136 = load i8*, i8** %d, align 8
  %arrayidx175 = getelementptr inbounds i8, i8* %136, i64 2
  store i8 %conv174, i8* %arrayidx175, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.135
  %137 = load i32, i32* %col, align 4
  %inc = add nsw i32 %137, 1
  store i32 %inc, i32* %col, align 4
  %138 = load i8*, i8** %s1, align 8
  %add.ptr176 = getelementptr inbounds i8, i8* %138, i64 3
  store i8* %add.ptr176, i8** %s1, align 8
  %139 = load i8*, i8** %s2, align 8
  %add.ptr177 = getelementptr inbounds i8, i8* %139, i64 3
  store i8* %add.ptr177, i8** %s2, align 8
  %140 = load i8*, i8** %d, align 8
  %add.ptr178 = getelementptr inbounds i8, i8* %140, i64 3
  store i8* %add.ptr178, i8** %d, align 8
  br label %for.cond.131

for.end:                                          ; preds = %for.cond.131
  %141 = load i32, i32* %rowstride1.addr, align 4
  %142 = load i8*, i8** %src1, align 8
  %idx.ext179 = sext i32 %141 to i64
  %add.ptr180 = getelementptr inbounds i8, i8* %142, i64 %idx.ext179
  store i8* %add.ptr180, i8** %src1, align 8
  %143 = load i32, i32* %rowstride2.addr, align 4
  %144 = load i8*, i8** %src2, align 8
  %idx.ext181 = sext i32 %143 to i64
  %add.ptr182 = getelementptr inbounds i8, i8* %144, i64 %idx.ext181
  store i8* %add.ptr182, i8** %src2, align 8
  %145 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %rowstride183 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %145, i32 0, i32 5
  %146 = load i32, i32* %rowstride183, align 4
  %147 = load i8*, i8** %dest, align 8
  %idx.ext184 = sext i32 %146 to i64
  %add.ptr185 = getelementptr inbounds i8, i8* %147, i64 %idx.ext184
  store i8* %add.ptr185, i8** %dest, align 8
  br label %for.inc.186

for.inc.186:                                      ; preds = %for.end
  %148 = load i32, i32* %row, align 4
  %inc187 = add nsw i32 %148, 1
  store i32 %inc187, i32* %row, align 4
  br label %for.cond

for.end.188:                                      ; preds = %for.cond
  br label %sw.epilog.955

sw.bb.189:                                        ; preds = %if.end.115
  %149 = load i32, i32* %y.addr, align 4
  store i32 %149, i32* %row, align 4
  br label %for.cond.190

for.cond.190:                                     ; preds = %for.inc.396, %sw.bb.189
  %150 = load i32, i32* %row, align 4
  %151 = load i32, i32* %y.addr, align 4
  %152 = load i32, i32* %height.addr, align 4
  %add191 = add nsw i32 %151, %152
  %cmp192 = icmp slt i32 %150, %add191
  br i1 %cmp192, label %for.body.194, label %for.end.398

for.body.194:                                     ; preds = %for.cond.190
  %153 = load i8*, i8** %src1, align 8
  store i8* %153, i8** %s1196, align 8
  %154 = load i8*, i8** %src2, align 8
  store i8* %154, i8** %s2198, align 8
  %155 = load i8*, i8** %dest, align 8
  store i8* %155, i8** %d200, align 8
  %156 = load i32, i32* %x.addr, align 4
  store i32 %156, i32* %col, align 4
  br label %for.cond.201

for.cond.201:                                     ; preds = %for.inc.383, %for.body.194
  %157 = load i32, i32* %col, align 4
  %158 = load i32, i32* %x.addr, align 4
  %159 = load i32, i32* %width.addr, align 4
  %add202 = add nsw i32 %158, %159
  %cmp203 = icmp slt i32 %157, %add202
  br i1 %cmp203, label %for.body.205, label %for.end.388

for.body.205:                                     ; preds = %for.cond.201
  %160 = load i8*, i8** %s1196, align 8
  %arrayidx207 = getelementptr inbounds i8, i8* %160, i64 3
  %161 = load i8, i8* %arrayidx207, align 1
  %conv208 = zext i8 %161 to i32
  %162 = load i8*, i8** %s2198, align 8
  %arrayidx209 = getelementptr inbounds i8, i8* %162, i64 3
  %163 = load i8, i8* %arrayidx209, align 1
  %conv210 = zext i8 %163 to i32
  %cmp211 = icmp eq i32 %conv208, %conv210
  br i1 %cmp211, label %if.then.213, label %if.else.258

if.then.213:                                      ; preds = %for.body.205
  %164 = load i8*, i8** %s1196, align 8
  %arrayidx214 = getelementptr inbounds i8, i8* %164, i64 0
  %165 = load i8, i8* %arrayidx214, align 1
  %conv215 = zext i8 %165 to i32
  %shl216 = shl i32 %conv215, 8
  %166 = load i8*, i8** %s2198, align 8
  %arrayidx217 = getelementptr inbounds i8, i8* %166, i64 0
  %167 = load i8, i8* %arrayidx217, align 1
  %conv218 = zext i8 %167 to i32
  %168 = load i8*, i8** %s1196, align 8
  %arrayidx219 = getelementptr inbounds i8, i8* %168, i64 0
  %169 = load i8, i8* %arrayidx219, align 1
  %conv220 = zext i8 %169 to i32
  %sub221 = sub nsw i32 %conv218, %conv220
  %170 = load i8, i8* %opacity.addr, align 1
  %conv222 = zext i8 %170 to i32
  %mul223 = mul nsw i32 %sub221, %conv222
  %add224 = add nsw i32 %shl216, %mul223
  %shr225 = ashr i32 %add224, 8
  %conv226 = trunc i32 %shr225 to i8
  %arrayidx227 = getelementptr inbounds [4 x i8], [4 x i8]* %inter, i32 0, i64 0
  store i8 %conv226, i8* %arrayidx227, align 1
  %171 = load i8*, i8** %s1196, align 8
  %arrayidx228 = getelementptr inbounds i8, i8* %171, i64 1
  %172 = load i8, i8* %arrayidx228, align 1
  %conv229 = zext i8 %172 to i32
  %shl230 = shl i32 %conv229, 8
  %173 = load i8*, i8** %s2198, align 8
  %arrayidx231 = getelementptr inbounds i8, i8* %173, i64 1
  %174 = load i8, i8* %arrayidx231, align 1
  %conv232 = zext i8 %174 to i32
  %175 = load i8*, i8** %s1196, align 8
  %arrayidx233 = getelementptr inbounds i8, i8* %175, i64 1
  %176 = load i8, i8* %arrayidx233, align 1
  %conv234 = zext i8 %176 to i32
  %sub235 = sub nsw i32 %conv232, %conv234
  %177 = load i8, i8* %opacity.addr, align 1
  %conv236 = zext i8 %177 to i32
  %mul237 = mul nsw i32 %sub235, %conv236
  %add238 = add nsw i32 %shl230, %mul237
  %shr239 = ashr i32 %add238, 8
  %conv240 = trunc i32 %shr239 to i8
  %arrayidx241 = getelementptr inbounds [4 x i8], [4 x i8]* %inter, i32 0, i64 1
  store i8 %conv240, i8* %arrayidx241, align 1
  %178 = load i8*, i8** %s1196, align 8
  %arrayidx242 = getelementptr inbounds i8, i8* %178, i64 2
  %179 = load i8, i8* %arrayidx242, align 1
  %conv243 = zext i8 %179 to i32
  %shl244 = shl i32 %conv243, 8
  %180 = load i8*, i8** %s2198, align 8
  %arrayidx245 = getelementptr inbounds i8, i8* %180, i64 2
  %181 = load i8, i8* %arrayidx245, align 1
  %conv246 = zext i8 %181 to i32
  %182 = load i8*, i8** %s1196, align 8
  %arrayidx247 = getelementptr inbounds i8, i8* %182, i64 2
  %183 = load i8, i8* %arrayidx247, align 1
  %conv248 = zext i8 %183 to i32
  %sub249 = sub nsw i32 %conv246, %conv248
  %184 = load i8, i8* %opacity.addr, align 1
  %conv250 = zext i8 %184 to i32
  %mul251 = mul nsw i32 %sub249, %conv250
  %add252 = add nsw i32 %shl244, %mul251
  %shr253 = ashr i32 %add252, 8
  %conv254 = trunc i32 %shr253 to i8
  %arrayidx255 = getelementptr inbounds [4 x i8], [4 x i8]* %inter, i32 0, i64 2
  store i8 %conv254, i8* %arrayidx255, align 1
  %185 = load i8*, i8** %s1196, align 8
  %arrayidx256 = getelementptr inbounds i8, i8* %185, i64 3
  %186 = load i8, i8* %arrayidx256, align 1
  %arrayidx257 = getelementptr inbounds [4 x i8], [4 x i8]* %inter, i32 0, i64 3
  store i8 %186, i8* %arrayidx257, align 1
  br label %if.end.313

if.else.258:                                      ; preds = %for.body.205
  %187 = load i8*, i8** %s1196, align 8
  %arrayidx259 = getelementptr inbounds i8, i8* %187, i64 3
  %188 = load i8, i8* %arrayidx259, align 1
  %conv260 = zext i8 %188 to i32
  %shl261 = shl i32 %conv260, 8
  %189 = load i8*, i8** %s2198, align 8
  %arrayidx262 = getelementptr inbounds i8, i8* %189, i64 3
  %190 = load i8, i8* %arrayidx262, align 1
  %conv263 = zext i8 %190 to i32
  %191 = load i8*, i8** %s1196, align 8
  %arrayidx264 = getelementptr inbounds i8, i8* %191, i64 3
  %192 = load i8, i8* %arrayidx264, align 1
  %conv265 = zext i8 %192 to i32
  %sub266 = sub nsw i32 %conv263, %conv265
  %193 = load i8, i8* %opacity.addr, align 1
  %conv267 = zext i8 %193 to i32
  %mul268 = mul nsw i32 %sub266, %conv267
  %add269 = add nsw i32 %shl261, %mul268
  %shr270 = ashr i32 %add269, 8
  %conv271 = trunc i32 %shr270 to i8
  %arrayidx272 = getelementptr inbounds [4 x i8], [4 x i8]* %inter, i32 0, i64 3
  store i8 %conv271, i8* %arrayidx272, align 1
  %arrayidx273 = getelementptr inbounds [4 x i8], [4 x i8]* %inter, i32 0, i64 3
  %194 = load i8, i8* %arrayidx273, align 1
  %tobool274 = icmp ne i8 %194, 0
  br i1 %tobool274, label %if.then.275, label %if.end.312

if.then.275:                                      ; preds = %if.else.258
  store i32 0, i32* %i, align 4
  br label %for.cond.276

for.cond.276:                                     ; preds = %for.inc.309, %if.then.275
  %195 = load i32, i32* %i, align 4
  %cmp277 = icmp slt i32 %195, 3
  br i1 %cmp277, label %for.body.279, label %for.end.311

for.body.279:                                     ; preds = %for.cond.276
  %196 = load i32, i32* %i, align 4
  %idxprom = sext i32 %196 to i64
  %197 = load i8*, i8** %s1196, align 8
  %arrayidx281 = getelementptr inbounds i8, i8* %197, i64 %idxprom
  %198 = load i8, i8* %arrayidx281, align 1
  %conv282 = zext i8 %198 to i32
  %199 = load i8*, i8** %s1196, align 8
  %arrayidx283 = getelementptr inbounds i8, i8* %199, i64 3
  %200 = load i8, i8* %arrayidx283, align 1
  %conv284 = zext i8 %200 to i32
  %mul285 = mul nsw i32 %conv282, %conv284
  %conv286 = trunc i32 %mul285 to i16
  store i16 %conv286, i16* %a, align 2
  %201 = load i32, i32* %i, align 4
  %idxprom288 = sext i32 %201 to i64
  %202 = load i8*, i8** %s2198, align 8
  %arrayidx289 = getelementptr inbounds i8, i8* %202, i64 %idxprom288
  %203 = load i8, i8* %arrayidx289, align 1
  %conv290 = zext i8 %203 to i32
  %204 = load i8*, i8** %s2198, align 8
  %arrayidx291 = getelementptr inbounds i8, i8* %204, i64 3
  %205 = load i8, i8* %arrayidx291, align 1
  %conv292 = zext i8 %205 to i32
  %mul293 = mul nsw i32 %conv290, %conv292
  %conv294 = trunc i32 %mul293 to i16
  store i16 %conv294, i16* %b, align 2
  %206 = load i16, i16* %a, align 2
  %conv295 = zext i16 %206 to i32
  %shl296 = shl i32 %conv295, 8
  %207 = load i16, i16* %b, align 2
  %conv297 = zext i16 %207 to i32
  %208 = load i16, i16* %a, align 2
  %conv298 = zext i16 %208 to i32
  %sub299 = sub nsw i32 %conv297, %conv298
  %209 = load i8, i8* %opacity.addr, align 1
  %conv300 = zext i8 %209 to i32
  %mul301 = mul nsw i32 %sub299, %conv300
  %add302 = add nsw i32 %shl296, %mul301
  %shr303 = ashr i32 %add302, 8
  %arrayidx304 = getelementptr inbounds [4 x i8], [4 x i8]* %inter, i32 0, i64 3
  %210 = load i8, i8* %arrayidx304, align 1
  %conv305 = zext i8 %210 to i32
  %div = sdiv i32 %shr303, %conv305
  %conv306 = trunc i32 %div to i8
  %211 = load i32, i32* %i, align 4
  %idxprom307 = sext i32 %211 to i64
  %arrayidx308 = getelementptr inbounds [4 x i8], [4 x i8]* %inter, i32 0, i64 %idxprom307
  store i8 %conv306, i8* %arrayidx308, align 1
  br label %for.inc.309

for.inc.309:                                      ; preds = %for.body.279
  %212 = load i32, i32* %i, align 4
  %inc310 = add nsw i32 %212, 1
  store i32 %inc310, i32* %i, align 4
  br label %for.cond.276

for.end.311:                                      ; preds = %for.cond.276
  br label %if.end.312

if.end.312:                                       ; preds = %for.end.311, %if.else.258
  br label %if.end.313

if.end.313:                                       ; preds = %if.end.312, %if.then.213
  %arrayidx314 = getelementptr inbounds [4 x i8], [4 x i8]* %inter, i32 0, i64 3
  %213 = load i8, i8* %arrayidx314, align 1
  %conv315 = zext i8 %213 to i32
  switch i32 %conv315, label %sw.default.335 [
    i32 0, label %sw.bb.316
    i32 255, label %sw.bb.328
  ]

sw.bb.316:                                        ; preds = %if.end.313
  %214 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %214, i32 0, i32 7
  %215 = load i32, i32* %offset_y, align 4
  %216 = load i32, i32* %row, align 4
  %add317 = add nsw i32 %215, %216
  %217 = load i32, i32* %size, align 4
  %and318 = and i32 %add317, %217
  %218 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %218, i32 0, i32 6
  %219 = load i32, i32* %offset_x, align 4
  %220 = load i32, i32* %col, align 4
  %add319 = add nsw i32 %219, %220
  %221 = load i32, i32* %size, align 4
  %and320 = and i32 %add319, %221
  %xor = xor i32 %and318, %and320
  %tobool321 = icmp ne i32 %xor, 0
  br i1 %tobool321, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.316
  %222 = load i8, i8* %dark, align 1
  %conv322 = zext i8 %222 to i32
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.316
  %223 = load i8, i8* %light, align 1
  %conv323 = zext i8 %223 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv322, %cond.true ], [ %conv323, %cond.false ]
  %conv324 = trunc i32 %cond to i8
  %224 = load i8*, i8** %d200, align 8
  %arrayidx325 = getelementptr inbounds i8, i8* %224, i64 2
  store i8 %conv324, i8* %arrayidx325, align 1
  %225 = load i8*, i8** %d200, align 8
  %arrayidx326 = getelementptr inbounds i8, i8* %225, i64 1
  store i8 %conv324, i8* %arrayidx326, align 1
  %226 = load i8*, i8** %d200, align 8
  %arrayidx327 = getelementptr inbounds i8, i8* %226, i64 0
  store i8 %conv324, i8* %arrayidx327, align 1
  br label %sw.epilog.382

sw.bb.328:                                        ; preds = %if.end.313
  %arrayidx329 = getelementptr inbounds [4 x i8], [4 x i8]* %inter, i32 0, i64 0
  %227 = load i8, i8* %arrayidx329, align 1
  %228 = load i8*, i8** %d200, align 8
  %arrayidx330 = getelementptr inbounds i8, i8* %228, i64 0
  store i8 %227, i8* %arrayidx330, align 1
  %arrayidx331 = getelementptr inbounds [4 x i8], [4 x i8]* %inter, i32 0, i64 1
  %229 = load i8, i8* %arrayidx331, align 1
  %230 = load i8*, i8** %d200, align 8
  %arrayidx332 = getelementptr inbounds i8, i8* %230, i64 1
  store i8 %229, i8* %arrayidx332, align 1
  %arrayidx333 = getelementptr inbounds [4 x i8], [4 x i8]* %inter, i32 0, i64 2
  %231 = load i8, i8* %arrayidx333, align 1
  %232 = load i8*, i8** %d200, align 8
  %arrayidx334 = getelementptr inbounds i8, i8* %232, i64 2
  store i8 %231, i8* %arrayidx334, align 1
  br label %sw.epilog.382

sw.default.335:                                   ; preds = %if.end.313
  %arrayidx337 = getelementptr inbounds [4 x i8], [4 x i8]* %inter, i32 0, i64 3
  %233 = load i8, i8* %arrayidx337, align 1
  %conv338 = zext i8 %233 to i32
  %add339 = add nsw i32 %conv338, 1
  store i32 %add339, i32* %alpha, align 4
  %234 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_y341 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %234, i32 0, i32 7
  %235 = load i32, i32* %offset_y341, align 4
  %236 = load i32, i32* %row, align 4
  %add342 = add nsw i32 %235, %236
  %237 = load i32, i32* %size, align 4
  %and343 = and i32 %add342, %237
  %238 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_x344 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %238, i32 0, i32 6
  %239 = load i32, i32* %offset_x344, align 4
  %240 = load i32, i32* %col, align 4
  %add345 = add nsw i32 %239, %240
  %241 = load i32, i32* %size, align 4
  %and346 = and i32 %add345, %241
  %xor347 = xor i32 %and343, %and346
  %tobool348 = icmp ne i32 %xor347, 0
  br i1 %tobool348, label %cond.true.349, label %cond.false.351

cond.true.349:                                    ; preds = %sw.default.335
  %242 = load i8, i8* %dark, align 1
  %conv350 = zext i8 %242 to i32
  br label %cond.end.353

cond.false.351:                                   ; preds = %sw.default.335
  %243 = load i8, i8* %light, align 1
  %conv352 = zext i8 %243 to i32
  br label %cond.end.353

cond.end.353:                                     ; preds = %cond.false.351, %cond.true.349
  %cond354 = phi i32 [ %conv350, %cond.true.349 ], [ %conv352, %cond.false.351 ]
  store i32 %cond354, i32* %check, align 4
  %244 = load i32, i32* %check, align 4
  %shl355 = shl i32 %244, 8
  %arrayidx356 = getelementptr inbounds [4 x i8], [4 x i8]* %inter, i32 0, i64 0
  %245 = load i8, i8* %arrayidx356, align 1
  %conv357 = zext i8 %245 to i32
  %246 = load i32, i32* %check, align 4
  %sub358 = sub i32 %conv357, %246
  %247 = load i32, i32* %alpha, align 4
  %mul359 = mul i32 %sub358, %247
  %add360 = add i32 %shl355, %mul359
  %shr361 = lshr i32 %add360, 8
  %conv362 = trunc i32 %shr361 to i8
  %248 = load i8*, i8** %d200, align 8
  %arrayidx363 = getelementptr inbounds i8, i8* %248, i64 0
  store i8 %conv362, i8* %arrayidx363, align 1
  %249 = load i32, i32* %check, align 4
  %shl364 = shl i32 %249, 8
  %arrayidx365 = getelementptr inbounds [4 x i8], [4 x i8]* %inter, i32 0, i64 1
  %250 = load i8, i8* %arrayidx365, align 1
  %conv366 = zext i8 %250 to i32
  %251 = load i32, i32* %check, align 4
  %sub367 = sub i32 %conv366, %251
  %252 = load i32, i32* %alpha, align 4
  %mul368 = mul i32 %sub367, %252
  %add369 = add i32 %shl364, %mul368
  %shr370 = lshr i32 %add369, 8
  %conv371 = trunc i32 %shr370 to i8
  %253 = load i8*, i8** %d200, align 8
  %arrayidx372 = getelementptr inbounds i8, i8* %253, i64 1
  store i8 %conv371, i8* %arrayidx372, align 1
  %254 = load i32, i32* %check, align 4
  %shl373 = shl i32 %254, 8
  %arrayidx374 = getelementptr inbounds [4 x i8], [4 x i8]* %inter, i32 0, i64 2
  %255 = load i8, i8* %arrayidx374, align 1
  %conv375 = zext i8 %255 to i32
  %256 = load i32, i32* %check, align 4
  %sub376 = sub i32 %conv375, %256
  %257 = load i32, i32* %alpha, align 4
  %mul377 = mul i32 %sub376, %257
  %add378 = add i32 %shl373, %mul377
  %shr379 = lshr i32 %add378, 8
  %conv380 = trunc i32 %shr379 to i8
  %258 = load i8*, i8** %d200, align 8
  %arrayidx381 = getelementptr inbounds i8, i8* %258, i64 2
  store i8 %conv380, i8* %arrayidx381, align 1
  br label %sw.epilog.382

sw.epilog.382:                                    ; preds = %cond.end.353, %sw.bb.328, %cond.end
  br label %for.inc.383

for.inc.383:                                      ; preds = %sw.epilog.382
  %259 = load i32, i32* %col, align 4
  %inc384 = add nsw i32 %259, 1
  store i32 %inc384, i32* %col, align 4
  %260 = load i8*, i8** %s1196, align 8
  %add.ptr385 = getelementptr inbounds i8, i8* %260, i64 4
  store i8* %add.ptr385, i8** %s1196, align 8
  %261 = load i8*, i8** %s2198, align 8
  %add.ptr386 = getelementptr inbounds i8, i8* %261, i64 4
  store i8* %add.ptr386, i8** %s2198, align 8
  %262 = load i8*, i8** %d200, align 8
  %add.ptr387 = getelementptr inbounds i8, i8* %262, i64 3
  store i8* %add.ptr387, i8** %d200, align 8
  br label %for.cond.201

for.end.388:                                      ; preds = %for.cond.201
  %263 = load i32, i32* %rowstride1.addr, align 4
  %264 = load i8*, i8** %src1, align 8
  %idx.ext389 = sext i32 %263 to i64
  %add.ptr390 = getelementptr inbounds i8, i8* %264, i64 %idx.ext389
  store i8* %add.ptr390, i8** %src1, align 8
  %265 = load i32, i32* %rowstride2.addr, align 4
  %266 = load i8*, i8** %src2, align 8
  %idx.ext391 = sext i32 %265 to i64
  %add.ptr392 = getelementptr inbounds i8, i8* %266, i64 %idx.ext391
  store i8* %add.ptr392, i8** %src2, align 8
  %267 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %rowstride393 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %267, i32 0, i32 5
  %268 = load i32, i32* %rowstride393, align 4
  %269 = load i8*, i8** %dest, align 8
  %idx.ext394 = sext i32 %268 to i64
  %add.ptr395 = getelementptr inbounds i8, i8* %269, i64 %idx.ext394
  store i8* %add.ptr395, i8** %dest, align 8
  br label %for.inc.396

for.inc.396:                                      ; preds = %for.end.388
  %270 = load i32, i32* %row, align 4
  %inc397 = add nsw i32 %270, 1
  store i32 %inc397, i32* %row, align 4
  br label %for.cond.190

for.end.398:                                      ; preds = %for.cond.190
  br label %sw.epilog.955

sw.bb.399:                                        ; preds = %if.end.115
  store i32 0, i32* %row, align 4
  br label %for.cond.400

for.cond.400:                                     ; preds = %for.inc.442, %sw.bb.399
  %271 = load i32, i32* %row, align 4
  %272 = load i32, i32* %height.addr, align 4
  %cmp401 = icmp slt i32 %271, %272
  br i1 %cmp401, label %for.body.403, label %for.end.444

for.body.403:                                     ; preds = %for.cond.400
  %273 = load i8*, i8** %src1, align 8
  store i8* %273, i8** %s1405, align 8
  %274 = load i8*, i8** %src2, align 8
  store i8* %274, i8** %s2407, align 8
  %275 = load i8*, i8** %dest, align 8
  store i8* %275, i8** %d409, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond.410

for.cond.410:                                     ; preds = %for.inc.430, %for.body.403
  %276 = load i32, i32* %col, align 4
  %277 = load i32, i32* %width.addr, align 4
  %cmp411 = icmp slt i32 %276, %277
  br i1 %cmp411, label %for.body.413, label %for.end.434

for.body.413:                                     ; preds = %for.cond.410
  %278 = load i8*, i8** %s1405, align 8
  %arrayidx414 = getelementptr inbounds i8, i8* %278, i64 0
  %279 = load i8, i8* %arrayidx414, align 1
  %conv415 = zext i8 %279 to i32
  %shl416 = shl i32 %conv415, 8
  %280 = load i8*, i8** %s2407, align 8
  %arrayidx417 = getelementptr inbounds i8, i8* %280, i64 0
  %281 = load i8, i8* %arrayidx417, align 1
  %conv418 = zext i8 %281 to i32
  %282 = load i8*, i8** %s1405, align 8
  %arrayidx419 = getelementptr inbounds i8, i8* %282, i64 0
  %283 = load i8, i8* %arrayidx419, align 1
  %conv420 = zext i8 %283 to i32
  %sub421 = sub nsw i32 %conv418, %conv420
  %284 = load i8, i8* %opacity.addr, align 1
  %conv422 = zext i8 %284 to i32
  %mul423 = mul nsw i32 %sub421, %conv422
  %add424 = add nsw i32 %shl416, %mul423
  %shr425 = ashr i32 %add424, 8
  %conv426 = trunc i32 %shr425 to i8
  %285 = load i8*, i8** %d409, align 8
  %arrayidx427 = getelementptr inbounds i8, i8* %285, i64 2
  store i8 %conv426, i8* %arrayidx427, align 1
  %286 = load i8*, i8** %d409, align 8
  %arrayidx428 = getelementptr inbounds i8, i8* %286, i64 1
  store i8 %conv426, i8* %arrayidx428, align 1
  %287 = load i8*, i8** %d409, align 8
  %arrayidx429 = getelementptr inbounds i8, i8* %287, i64 0
  store i8 %conv426, i8* %arrayidx429, align 1
  br label %for.inc.430

for.inc.430:                                      ; preds = %for.body.413
  %288 = load i32, i32* %col, align 4
  %inc431 = add nsw i32 %288, 1
  store i32 %inc431, i32* %col, align 4
  %289 = load i8*, i8** %s1405, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %289, i32 1
  store i8* %incdec.ptr, i8** %s1405, align 8
  %290 = load i8*, i8** %s2407, align 8
  %incdec.ptr432 = getelementptr inbounds i8, i8* %290, i32 1
  store i8* %incdec.ptr432, i8** %s2407, align 8
  %291 = load i8*, i8** %d409, align 8
  %add.ptr433 = getelementptr inbounds i8, i8* %291, i64 3
  store i8* %add.ptr433, i8** %d409, align 8
  br label %for.cond.410

for.end.434:                                      ; preds = %for.cond.410
  %292 = load i32, i32* %rowstride1.addr, align 4
  %293 = load i8*, i8** %src1, align 8
  %idx.ext435 = sext i32 %292 to i64
  %add.ptr436 = getelementptr inbounds i8, i8* %293, i64 %idx.ext435
  store i8* %add.ptr436, i8** %src1, align 8
  %294 = load i32, i32* %rowstride2.addr, align 4
  %295 = load i8*, i8** %src2, align 8
  %idx.ext437 = sext i32 %294 to i64
  %add.ptr438 = getelementptr inbounds i8, i8* %295, i64 %idx.ext437
  store i8* %add.ptr438, i8** %src2, align 8
  %296 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %rowstride439 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %296, i32 0, i32 5
  %297 = load i32, i32* %rowstride439, align 4
  %298 = load i8*, i8** %dest, align 8
  %idx.ext440 = sext i32 %297 to i64
  %add.ptr441 = getelementptr inbounds i8, i8* %298, i64 %idx.ext440
  store i8* %add.ptr441, i8** %dest, align 8
  br label %for.inc.442

for.inc.442:                                      ; preds = %for.end.434
  %299 = load i32, i32* %row, align 4
  %inc443 = add nsw i32 %299, 1
  store i32 %inc443, i32* %row, align 4
  br label %for.cond.400

for.end.444:                                      ; preds = %for.cond.400
  br label %sw.epilog.955

sw.bb.445:                                        ; preds = %if.end.115
  %300 = load i32, i32* %y.addr, align 4
  store i32 %300, i32* %row, align 4
  br label %for.cond.446

for.cond.446:                                     ; preds = %for.inc.610, %sw.bb.445
  %301 = load i32, i32* %row, align 4
  %302 = load i32, i32* %y.addr, align 4
  %303 = load i32, i32* %height.addr, align 4
  %add447 = add nsw i32 %302, %303
  %cmp448 = icmp slt i32 %301, %add447
  br i1 %cmp448, label %for.body.450, label %for.end.612

for.body.450:                                     ; preds = %for.cond.446
  %304 = load i8*, i8** %src1, align 8
  store i8* %304, i8** %s1452, align 8
  %305 = load i8*, i8** %src2, align 8
  store i8* %305, i8** %s2454, align 8
  %306 = load i8*, i8** %dest, align 8
  store i8* %306, i8** %d456, align 8
  %307 = load i32, i32* %x.addr, align 4
  store i32 %307, i32* %col, align 4
  br label %for.cond.457

for.cond.457:                                     ; preds = %for.inc.597, %for.body.450
  %308 = load i32, i32* %col, align 4
  %309 = load i32, i32* %x.addr, align 4
  %310 = load i32, i32* %width.addr, align 4
  %add458 = add nsw i32 %309, %310
  %cmp459 = icmp slt i32 %308, %add458
  br i1 %cmp459, label %for.body.461, label %for.end.602

for.body.461:                                     ; preds = %for.cond.457
  %311 = bitcast [2 x i8]* %inter463 to i8*
  call void @llvm.memset.p0i8.i64(i8* %311, i8 0, i64 2, i32 1, i1 false)
  %312 = load i8*, i8** %s1452, align 8
  %arrayidx464 = getelementptr inbounds i8, i8* %312, i64 1
  %313 = load i8, i8* %arrayidx464, align 1
  %conv465 = zext i8 %313 to i32
  %314 = load i8*, i8** %s2454, align 8
  %arrayidx466 = getelementptr inbounds i8, i8* %314, i64 1
  %315 = load i8, i8* %arrayidx466, align 1
  %conv467 = zext i8 %315 to i32
  %cmp468 = icmp eq i32 %conv465, %conv467
  br i1 %cmp468, label %if.then.470, label %if.else.487

if.then.470:                                      ; preds = %for.body.461
  %316 = load i8*, i8** %s1452, align 8
  %arrayidx471 = getelementptr inbounds i8, i8* %316, i64 0
  %317 = load i8, i8* %arrayidx471, align 1
  %conv472 = zext i8 %317 to i32
  %shl473 = shl i32 %conv472, 8
  %318 = load i8*, i8** %s2454, align 8
  %arrayidx474 = getelementptr inbounds i8, i8* %318, i64 0
  %319 = load i8, i8* %arrayidx474, align 1
  %conv475 = zext i8 %319 to i32
  %320 = load i8*, i8** %s1452, align 8
  %arrayidx476 = getelementptr inbounds i8, i8* %320, i64 0
  %321 = load i8, i8* %arrayidx476, align 1
  %conv477 = zext i8 %321 to i32
  %sub478 = sub nsw i32 %conv475, %conv477
  %322 = load i8, i8* %opacity.addr, align 1
  %conv479 = zext i8 %322 to i32
  %mul480 = mul nsw i32 %sub478, %conv479
  %add481 = add nsw i32 %shl473, %mul480
  %shr482 = ashr i32 %add481, 8
  %conv483 = trunc i32 %shr482 to i8
  %arrayidx484 = getelementptr inbounds [2 x i8], [2 x i8]* %inter463, i32 0, i64 0
  store i8 %conv483, i8* %arrayidx484, align 1
  %323 = load i8*, i8** %s1452, align 8
  %arrayidx485 = getelementptr inbounds i8, i8* %323, i64 1
  %324 = load i8, i8* %arrayidx485, align 1
  %arrayidx486 = getelementptr inbounds [2 x i8], [2 x i8]* %inter463, i32 0, i64 1
  store i8 %324, i8* %arrayidx486, align 1
  br label %if.end.536

if.else.487:                                      ; preds = %for.body.461
  %325 = load i8*, i8** %s1452, align 8
  %arrayidx488 = getelementptr inbounds i8, i8* %325, i64 1
  %326 = load i8, i8* %arrayidx488, align 1
  %conv489 = zext i8 %326 to i32
  %shl490 = shl i32 %conv489, 8
  %327 = load i8*, i8** %s2454, align 8
  %arrayidx491 = getelementptr inbounds i8, i8* %327, i64 1
  %328 = load i8, i8* %arrayidx491, align 1
  %conv492 = zext i8 %328 to i32
  %329 = load i8*, i8** %s1452, align 8
  %arrayidx493 = getelementptr inbounds i8, i8* %329, i64 1
  %330 = load i8, i8* %arrayidx493, align 1
  %conv494 = zext i8 %330 to i32
  %sub495 = sub nsw i32 %conv492, %conv494
  %331 = load i8, i8* %opacity.addr, align 1
  %conv496 = zext i8 %331 to i32
  %mul497 = mul nsw i32 %sub495, %conv496
  %add498 = add nsw i32 %shl490, %mul497
  %shr499 = ashr i32 %add498, 8
  %conv500 = trunc i32 %shr499 to i8
  %arrayidx501 = getelementptr inbounds [2 x i8], [2 x i8]* %inter463, i32 0, i64 1
  store i8 %conv500, i8* %arrayidx501, align 1
  %arrayidx502 = getelementptr inbounds [2 x i8], [2 x i8]* %inter463, i32 0, i64 1
  %332 = load i8, i8* %arrayidx502, align 1
  %tobool503 = icmp ne i8 %332, 0
  br i1 %tobool503, label %if.then.504, label %if.end.535

if.then.504:                                      ; preds = %if.else.487
  %333 = load i8*, i8** %s1452, align 8
  %arrayidx507 = getelementptr inbounds i8, i8* %333, i64 0
  %334 = load i8, i8* %arrayidx507, align 1
  %conv508 = zext i8 %334 to i32
  %335 = load i8*, i8** %s1452, align 8
  %arrayidx509 = getelementptr inbounds i8, i8* %335, i64 1
  %336 = load i8, i8* %arrayidx509, align 1
  %conv510 = zext i8 %336 to i32
  %mul511 = mul nsw i32 %conv508, %conv510
  %conv512 = trunc i32 %mul511 to i16
  store i16 %conv512, i16* %a506, align 2
  %337 = load i8*, i8** %s2454, align 8
  %arrayidx515 = getelementptr inbounds i8, i8* %337, i64 0
  %338 = load i8, i8* %arrayidx515, align 1
  %conv516 = zext i8 %338 to i32
  %339 = load i8*, i8** %s2454, align 8
  %arrayidx517 = getelementptr inbounds i8, i8* %339, i64 1
  %340 = load i8, i8* %arrayidx517, align 1
  %conv518 = zext i8 %340 to i32
  %mul519 = mul nsw i32 %conv516, %conv518
  %conv520 = trunc i32 %mul519 to i16
  store i16 %conv520, i16* %b514, align 2
  %341 = load i16, i16* %a506, align 2
  %conv521 = zext i16 %341 to i32
  %shl522 = shl i32 %conv521, 8
  %342 = load i16, i16* %b514, align 2
  %conv523 = zext i16 %342 to i32
  %343 = load i16, i16* %a506, align 2
  %conv524 = zext i16 %343 to i32
  %sub525 = sub nsw i32 %conv523, %conv524
  %344 = load i8, i8* %opacity.addr, align 1
  %conv526 = zext i8 %344 to i32
  %mul527 = mul nsw i32 %sub525, %conv526
  %add528 = add nsw i32 %shl522, %mul527
  %shr529 = ashr i32 %add528, 8
  %arrayidx530 = getelementptr inbounds [2 x i8], [2 x i8]* %inter463, i32 0, i64 1
  %345 = load i8, i8* %arrayidx530, align 1
  %conv531 = zext i8 %345 to i32
  %div532 = sdiv i32 %shr529, %conv531
  %conv533 = trunc i32 %div532 to i8
  %arrayidx534 = getelementptr inbounds [2 x i8], [2 x i8]* %inter463, i32 0, i64 0
  store i8 %conv533, i8* %arrayidx534, align 1
  br label %if.end.535

if.end.535:                                       ; preds = %if.then.504, %if.else.487
  br label %if.end.536

if.end.536:                                       ; preds = %if.end.535, %if.then.470
  %arrayidx537 = getelementptr inbounds [2 x i8], [2 x i8]* %inter463, i32 0, i64 1
  %346 = load i8, i8* %arrayidx537, align 1
  %conv538 = zext i8 %346 to i32
  switch i32 %conv538, label %sw.default.563 [
    i32 0, label %sw.bb.539
    i32 255, label %sw.bb.558
  ]

sw.bb.539:                                        ; preds = %if.end.536
  %347 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_y540 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %347, i32 0, i32 7
  %348 = load i32, i32* %offset_y540, align 4
  %349 = load i32, i32* %row, align 4
  %add541 = add nsw i32 %348, %349
  %350 = load i32, i32* %size, align 4
  %and542 = and i32 %add541, %350
  %351 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_x543 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %351, i32 0, i32 6
  %352 = load i32, i32* %offset_x543, align 4
  %353 = load i32, i32* %col, align 4
  %add544 = add nsw i32 %352, %353
  %354 = load i32, i32* %size, align 4
  %and545 = and i32 %add544, %354
  %xor546 = xor i32 %and542, %and545
  %tobool547 = icmp ne i32 %xor546, 0
  br i1 %tobool547, label %cond.true.548, label %cond.false.550

cond.true.548:                                    ; preds = %sw.bb.539
  %355 = load i8, i8* %dark, align 1
  %conv549 = zext i8 %355 to i32
  br label %cond.end.552

cond.false.550:                                   ; preds = %sw.bb.539
  %356 = load i8, i8* %light, align 1
  %conv551 = zext i8 %356 to i32
  br label %cond.end.552

cond.end.552:                                     ; preds = %cond.false.550, %cond.true.548
  %cond553 = phi i32 [ %conv549, %cond.true.548 ], [ %conv551, %cond.false.550 ]
  %conv554 = trunc i32 %cond553 to i8
  %357 = load i8*, i8** %d456, align 8
  %arrayidx555 = getelementptr inbounds i8, i8* %357, i64 2
  store i8 %conv554, i8* %arrayidx555, align 1
  %358 = load i8*, i8** %d456, align 8
  %arrayidx556 = getelementptr inbounds i8, i8* %358, i64 1
  store i8 %conv554, i8* %arrayidx556, align 1
  %359 = load i8*, i8** %d456, align 8
  %arrayidx557 = getelementptr inbounds i8, i8* %359, i64 0
  store i8 %conv554, i8* %arrayidx557, align 1
  br label %sw.epilog.596

sw.bb.558:                                        ; preds = %if.end.536
  %arrayidx559 = getelementptr inbounds [2 x i8], [2 x i8]* %inter463, i32 0, i64 0
  %360 = load i8, i8* %arrayidx559, align 1
  %361 = load i8*, i8** %d456, align 8
  %arrayidx560 = getelementptr inbounds i8, i8* %361, i64 2
  store i8 %360, i8* %arrayidx560, align 1
  %362 = load i8*, i8** %d456, align 8
  %arrayidx561 = getelementptr inbounds i8, i8* %362, i64 1
  store i8 %360, i8* %arrayidx561, align 1
  %363 = load i8*, i8** %d456, align 8
  %arrayidx562 = getelementptr inbounds i8, i8* %363, i64 0
  store i8 %360, i8* %arrayidx562, align 1
  br label %sw.epilog.596

sw.default.563:                                   ; preds = %if.end.536
  %arrayidx566 = getelementptr inbounds [2 x i8], [2 x i8]* %inter463, i32 0, i64 1
  %364 = load i8, i8* %arrayidx566, align 1
  %conv567 = zext i8 %364 to i32
  %add568 = add nsw i32 %conv567, 1
  store i32 %add568, i32* %alpha565, align 4
  %365 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_y571 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %365, i32 0, i32 7
  %366 = load i32, i32* %offset_y571, align 4
  %367 = load i32, i32* %row, align 4
  %add572 = add nsw i32 %366, %367
  %368 = load i32, i32* %size, align 4
  %and573 = and i32 %add572, %368
  %369 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_x574 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %369, i32 0, i32 6
  %370 = load i32, i32* %offset_x574, align 4
  %371 = load i32, i32* %col, align 4
  %add575 = add nsw i32 %370, %371
  %372 = load i32, i32* %size, align 4
  %and576 = and i32 %add575, %372
  %xor577 = xor i32 %and573, %and576
  %tobool578 = icmp ne i32 %xor577, 0
  br i1 %tobool578, label %cond.true.579, label %cond.false.581

cond.true.579:                                    ; preds = %sw.default.563
  %373 = load i8, i8* %dark, align 1
  %conv580 = zext i8 %373 to i32
  br label %cond.end.583

cond.false.581:                                   ; preds = %sw.default.563
  %374 = load i8, i8* %light, align 1
  %conv582 = zext i8 %374 to i32
  br label %cond.end.583

cond.end.583:                                     ; preds = %cond.false.581, %cond.true.579
  %cond584 = phi i32 [ %conv580, %cond.true.579 ], [ %conv582, %cond.false.581 ]
  store i32 %cond584, i32* %check570, align 4
  %375 = load i32, i32* %check570, align 4
  %shl585 = shl i32 %375, 8
  %arrayidx586 = getelementptr inbounds [2 x i8], [2 x i8]* %inter463, i32 0, i64 0
  %376 = load i8, i8* %arrayidx586, align 1
  %conv587 = zext i8 %376 to i32
  %377 = load i32, i32* %check570, align 4
  %sub588 = sub i32 %conv587, %377
  %378 = load i32, i32* %alpha565, align 4
  %mul589 = mul i32 %sub588, %378
  %add590 = add i32 %shl585, %mul589
  %shr591 = lshr i32 %add590, 8
  %conv592 = trunc i32 %shr591 to i8
  %379 = load i8*, i8** %d456, align 8
  %arrayidx593 = getelementptr inbounds i8, i8* %379, i64 2
  store i8 %conv592, i8* %arrayidx593, align 1
  %380 = load i8*, i8** %d456, align 8
  %arrayidx594 = getelementptr inbounds i8, i8* %380, i64 1
  store i8 %conv592, i8* %arrayidx594, align 1
  %381 = load i8*, i8** %d456, align 8
  %arrayidx595 = getelementptr inbounds i8, i8* %381, i64 0
  store i8 %conv592, i8* %arrayidx595, align 1
  br label %sw.epilog.596

sw.epilog.596:                                    ; preds = %cond.end.583, %sw.bb.558, %cond.end.552
  br label %for.inc.597

for.inc.597:                                      ; preds = %sw.epilog.596
  %382 = load i32, i32* %col, align 4
  %inc598 = add nsw i32 %382, 1
  store i32 %inc598, i32* %col, align 4
  %383 = load i8*, i8** %s1452, align 8
  %add.ptr599 = getelementptr inbounds i8, i8* %383, i64 2
  store i8* %add.ptr599, i8** %s1452, align 8
  %384 = load i8*, i8** %s2454, align 8
  %add.ptr600 = getelementptr inbounds i8, i8* %384, i64 2
  store i8* %add.ptr600, i8** %s2454, align 8
  %385 = load i8*, i8** %d456, align 8
  %add.ptr601 = getelementptr inbounds i8, i8* %385, i64 3
  store i8* %add.ptr601, i8** %d456, align 8
  br label %for.cond.457

for.end.602:                                      ; preds = %for.cond.457
  %386 = load i32, i32* %rowstride1.addr, align 4
  %387 = load i8*, i8** %src1, align 8
  %idx.ext603 = sext i32 %386 to i64
  %add.ptr604 = getelementptr inbounds i8, i8* %387, i64 %idx.ext603
  store i8* %add.ptr604, i8** %src1, align 8
  %388 = load i32, i32* %rowstride2.addr, align 4
  %389 = load i8*, i8** %src2, align 8
  %idx.ext605 = sext i32 %388 to i64
  %add.ptr606 = getelementptr inbounds i8, i8* %389, i64 %idx.ext605
  store i8* %add.ptr606, i8** %src2, align 8
  %390 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %rowstride607 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %390, i32 0, i32 5
  %391 = load i32, i32* %rowstride607, align 4
  %392 = load i8*, i8** %dest, align 8
  %idx.ext608 = sext i32 %391 to i64
  %add.ptr609 = getelementptr inbounds i8, i8* %392, i64 %idx.ext608
  store i8* %add.ptr609, i8** %dest, align 8
  br label %for.inc.610

for.inc.610:                                      ; preds = %for.end.602
  %393 = load i32, i32* %row, align 4
  %inc611 = add nsw i32 %393, 1
  store i32 %inc611, i32* %row, align 4
  br label %for.cond.446

for.end.612:                                      ; preds = %for.cond.446
  br label %sw.epilog.955

sw.bb.613:                                        ; preds = %if.end.115
  br label %do.body.614

do.body.614:                                      ; preds = %sw.bb.613
  %394 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %colormap = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %394, i32 0, i32 11
  %395 = load i8*, i8** %colormap, align 8
  %cmp615 = icmp ne i8* %395, null
  br i1 %cmp615, label %if.then.617, label %if.else.618

if.then.617:                                      ; preds = %do.body.614
  br label %if.end.619

if.else.618:                                      ; preds = %do.body.614
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_preview_area_blend, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.619:                                       ; preds = %if.then.617
  br label %do.end.620

do.end.620:                                       ; preds = %if.end.619
  store i32 0, i32* %row, align 4
  br label %for.cond.621

for.cond.621:                                     ; preds = %for.inc.704, %do.end.620
  %396 = load i32, i32* %row, align 4
  %397 = load i32, i32* %height.addr, align 4
  %cmp622 = icmp slt i32 %396, %397
  br i1 %cmp622, label %for.body.624, label %for.end.706

for.body.624:                                     ; preds = %for.cond.621
  %398 = load i8*, i8** %src1, align 8
  store i8* %398, i8** %s1626, align 8
  %399 = load i8*, i8** %src2, align 8
  store i8* %399, i8** %s2628, align 8
  %400 = load i8*, i8** %dest, align 8
  store i8* %400, i8** %d630, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond.631

for.cond.631:                                     ; preds = %for.inc.691, %for.body.624
  %401 = load i32, i32* %col, align 4
  %402 = load i32, i32* %width.addr, align 4
  %cmp632 = icmp slt i32 %401, %402
  br i1 %cmp632, label %for.body.634, label %for.end.696

for.body.634:                                     ; preds = %for.cond.631
  %403 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %colormap636 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %403, i32 0, i32 11
  %404 = load i8*, i8** %colormap636, align 8
  %405 = load i8*, i8** %s1626, align 8
  %arrayidx637 = getelementptr inbounds i8, i8* %405, i64 0
  %406 = load i8, i8* %arrayidx637, align 1
  %conv638 = zext i8 %406 to i32
  %mul639 = mul nsw i32 3, %conv638
  %idx.ext640 = sext i32 %mul639 to i64
  %add.ptr641 = getelementptr inbounds i8, i8* %404, i64 %idx.ext640
  store i8* %add.ptr641, i8** %cmap1, align 8
  %407 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %colormap643 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %407, i32 0, i32 11
  %408 = load i8*, i8** %colormap643, align 8
  %409 = load i8*, i8** %s2628, align 8
  %arrayidx644 = getelementptr inbounds i8, i8* %409, i64 0
  %410 = load i8, i8* %arrayidx644, align 1
  %conv645 = zext i8 %410 to i32
  %mul646 = mul nsw i32 3, %conv645
  %idx.ext647 = sext i32 %mul646 to i64
  %add.ptr648 = getelementptr inbounds i8, i8* %408, i64 %idx.ext647
  store i8* %add.ptr648, i8** %cmap2, align 8
  %411 = load i8*, i8** %cmap1, align 8
  %arrayidx649 = getelementptr inbounds i8, i8* %411, i64 0
  %412 = load i8, i8* %arrayidx649, align 1
  %conv650 = zext i8 %412 to i32
  %shl651 = shl i32 %conv650, 8
  %413 = load i8*, i8** %cmap2, align 8
  %arrayidx652 = getelementptr inbounds i8, i8* %413, i64 0
  %414 = load i8, i8* %arrayidx652, align 1
  %conv653 = zext i8 %414 to i32
  %415 = load i8*, i8** %cmap1, align 8
  %arrayidx654 = getelementptr inbounds i8, i8* %415, i64 0
  %416 = load i8, i8* %arrayidx654, align 1
  %conv655 = zext i8 %416 to i32
  %sub656 = sub nsw i32 %conv653, %conv655
  %417 = load i8, i8* %opacity.addr, align 1
  %conv657 = zext i8 %417 to i32
  %mul658 = mul nsw i32 %sub656, %conv657
  %add659 = add nsw i32 %shl651, %mul658
  %shr660 = ashr i32 %add659, 8
  %conv661 = trunc i32 %shr660 to i8
  %418 = load i8*, i8** %d630, align 8
  %arrayidx662 = getelementptr inbounds i8, i8* %418, i64 0
  store i8 %conv661, i8* %arrayidx662, align 1
  %419 = load i8*, i8** %cmap1, align 8
  %arrayidx663 = getelementptr inbounds i8, i8* %419, i64 1
  %420 = load i8, i8* %arrayidx663, align 1
  %conv664 = zext i8 %420 to i32
  %shl665 = shl i32 %conv664, 8
  %421 = load i8*, i8** %cmap2, align 8
  %arrayidx666 = getelementptr inbounds i8, i8* %421, i64 1
  %422 = load i8, i8* %arrayidx666, align 1
  %conv667 = zext i8 %422 to i32
  %423 = load i8*, i8** %cmap1, align 8
  %arrayidx668 = getelementptr inbounds i8, i8* %423, i64 1
  %424 = load i8, i8* %arrayidx668, align 1
  %conv669 = zext i8 %424 to i32
  %sub670 = sub nsw i32 %conv667, %conv669
  %425 = load i8, i8* %opacity.addr, align 1
  %conv671 = zext i8 %425 to i32
  %mul672 = mul nsw i32 %sub670, %conv671
  %add673 = add nsw i32 %shl665, %mul672
  %shr674 = ashr i32 %add673, 8
  %conv675 = trunc i32 %shr674 to i8
  %426 = load i8*, i8** %d630, align 8
  %arrayidx676 = getelementptr inbounds i8, i8* %426, i64 1
  store i8 %conv675, i8* %arrayidx676, align 1
  %427 = load i8*, i8** %cmap1, align 8
  %arrayidx677 = getelementptr inbounds i8, i8* %427, i64 2
  %428 = load i8, i8* %arrayidx677, align 1
  %conv678 = zext i8 %428 to i32
  %shl679 = shl i32 %conv678, 8
  %429 = load i8*, i8** %cmap2, align 8
  %arrayidx680 = getelementptr inbounds i8, i8* %429, i64 2
  %430 = load i8, i8* %arrayidx680, align 1
  %conv681 = zext i8 %430 to i32
  %431 = load i8*, i8** %cmap1, align 8
  %arrayidx682 = getelementptr inbounds i8, i8* %431, i64 2
  %432 = load i8, i8* %arrayidx682, align 1
  %conv683 = zext i8 %432 to i32
  %sub684 = sub nsw i32 %conv681, %conv683
  %433 = load i8, i8* %opacity.addr, align 1
  %conv685 = zext i8 %433 to i32
  %mul686 = mul nsw i32 %sub684, %conv685
  %add687 = add nsw i32 %shl679, %mul686
  %shr688 = ashr i32 %add687, 8
  %conv689 = trunc i32 %shr688 to i8
  %434 = load i8*, i8** %d630, align 8
  %arrayidx690 = getelementptr inbounds i8, i8* %434, i64 2
  store i8 %conv689, i8* %arrayidx690, align 1
  br label %for.inc.691

for.inc.691:                                      ; preds = %for.body.634
  %435 = load i32, i32* %col, align 4
  %inc692 = add nsw i32 %435, 1
  store i32 %inc692, i32* %col, align 4
  %436 = load i8*, i8** %s1626, align 8
  %incdec.ptr693 = getelementptr inbounds i8, i8* %436, i32 1
  store i8* %incdec.ptr693, i8** %s1626, align 8
  %437 = load i8*, i8** %s2628, align 8
  %incdec.ptr694 = getelementptr inbounds i8, i8* %437, i32 1
  store i8* %incdec.ptr694, i8** %s2628, align 8
  %438 = load i8*, i8** %d630, align 8
  %add.ptr695 = getelementptr inbounds i8, i8* %438, i64 3
  store i8* %add.ptr695, i8** %d630, align 8
  br label %for.cond.631

for.end.696:                                      ; preds = %for.cond.631
  %439 = load i32, i32* %rowstride1.addr, align 4
  %440 = load i8*, i8** %src1, align 8
  %idx.ext697 = sext i32 %439 to i64
  %add.ptr698 = getelementptr inbounds i8, i8* %440, i64 %idx.ext697
  store i8* %add.ptr698, i8** %src1, align 8
  %441 = load i32, i32* %rowstride2.addr, align 4
  %442 = load i8*, i8** %src2, align 8
  %idx.ext699 = sext i32 %441 to i64
  %add.ptr700 = getelementptr inbounds i8, i8* %442, i64 %idx.ext699
  store i8* %add.ptr700, i8** %src2, align 8
  %443 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %rowstride701 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %443, i32 0, i32 5
  %444 = load i32, i32* %rowstride701, align 4
  %445 = load i8*, i8** %dest, align 8
  %idx.ext702 = sext i32 %444 to i64
  %add.ptr703 = getelementptr inbounds i8, i8* %445, i64 %idx.ext702
  store i8* %add.ptr703, i8** %dest, align 8
  br label %for.inc.704

for.inc.704:                                      ; preds = %for.end.696
  %446 = load i32, i32* %row, align 4
  %inc705 = add nsw i32 %446, 1
  store i32 %inc705, i32* %row, align 4
  br label %for.cond.621

for.end.706:                                      ; preds = %for.cond.621
  br label %sw.epilog.955

sw.bb.707:                                        ; preds = %if.end.115
  br label %do.body.708

do.body.708:                                      ; preds = %sw.bb.707
  %447 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %colormap709 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %447, i32 0, i32 11
  %448 = load i8*, i8** %colormap709, align 8
  %cmp710 = icmp ne i8* %448, null
  br i1 %cmp710, label %if.then.712, label %if.else.713

if.then.712:                                      ; preds = %do.body.708
  br label %if.end.714

if.else.713:                                      ; preds = %do.body.708
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_preview_area_blend, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.714:                                       ; preds = %if.then.712
  br label %do.end.715

do.end.715:                                       ; preds = %if.end.714
  %449 = load i32, i32* %y.addr, align 4
  store i32 %449, i32* %row, align 4
  br label %for.cond.716

for.cond.716:                                     ; preds = %for.inc.952, %do.end.715
  %450 = load i32, i32* %row, align 4
  %451 = load i32, i32* %y.addr, align 4
  %452 = load i32, i32* %height.addr, align 4
  %add717 = add nsw i32 %451, %452
  %cmp718 = icmp slt i32 %450, %add717
  br i1 %cmp718, label %for.body.720, label %for.end.954

for.body.720:                                     ; preds = %for.cond.716
  %453 = load i8*, i8** %src1, align 8
  store i8* %453, i8** %s1722, align 8
  %454 = load i8*, i8** %src2, align 8
  store i8* %454, i8** %s2724, align 8
  %455 = load i8*, i8** %dest, align 8
  store i8* %455, i8** %d726, align 8
  %456 = load i32, i32* %x.addr, align 4
  store i32 %456, i32* %col, align 4
  br label %for.cond.727

for.cond.727:                                     ; preds = %for.inc.939, %for.body.720
  %457 = load i32, i32* %col, align 4
  %458 = load i32, i32* %x.addr, align 4
  %459 = load i32, i32* %width.addr, align 4
  %add728 = add nsw i32 %458, %459
  %cmp729 = icmp slt i32 %457, %add728
  br i1 %cmp729, label %for.body.731, label %for.end.944

for.body.731:                                     ; preds = %for.cond.727
  %460 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %colormap734 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %460, i32 0, i32 11
  %461 = load i8*, i8** %colormap734, align 8
  %462 = load i8*, i8** %s1722, align 8
  %arrayidx735 = getelementptr inbounds i8, i8* %462, i64 0
  %463 = load i8, i8* %arrayidx735, align 1
  %conv736 = zext i8 %463 to i32
  %mul737 = mul nsw i32 3, %conv736
  %idx.ext738 = sext i32 %mul737 to i64
  %add.ptr739 = getelementptr inbounds i8, i8* %461, i64 %idx.ext738
  store i8* %add.ptr739, i8** %cmap1733, align 8
  %464 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %colormap742 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %464, i32 0, i32 11
  %465 = load i8*, i8** %colormap742, align 8
  %466 = load i8*, i8** %s2724, align 8
  %arrayidx743 = getelementptr inbounds i8, i8* %466, i64 0
  %467 = load i8, i8* %arrayidx743, align 1
  %conv744 = zext i8 %467 to i32
  %mul745 = mul nsw i32 3, %conv744
  %idx.ext746 = sext i32 %mul745 to i64
  %add.ptr747 = getelementptr inbounds i8, i8* %465, i64 %idx.ext746
  store i8* %add.ptr747, i8** %cmap2741, align 8
  %468 = load i8*, i8** %s1722, align 8
  %arrayidx750 = getelementptr inbounds i8, i8* %468, i64 1
  %469 = load i8, i8* %arrayidx750, align 1
  %conv751 = zext i8 %469 to i32
  %470 = load i8*, i8** %s2724, align 8
  %arrayidx752 = getelementptr inbounds i8, i8* %470, i64 1
  %471 = load i8, i8* %arrayidx752, align 1
  %conv753 = zext i8 %471 to i32
  %cmp754 = icmp eq i32 %conv751, %conv753
  br i1 %cmp754, label %if.then.756, label %if.else.801

if.then.756:                                      ; preds = %for.body.731
  %472 = load i8*, i8** %cmap1733, align 8
  %arrayidx757 = getelementptr inbounds i8, i8* %472, i64 0
  %473 = load i8, i8* %arrayidx757, align 1
  %conv758 = zext i8 %473 to i32
  %shl759 = shl i32 %conv758, 8
  %474 = load i8*, i8** %cmap2741, align 8
  %arrayidx760 = getelementptr inbounds i8, i8* %474, i64 0
  %475 = load i8, i8* %arrayidx760, align 1
  %conv761 = zext i8 %475 to i32
  %476 = load i8*, i8** %cmap1733, align 8
  %arrayidx762 = getelementptr inbounds i8, i8* %476, i64 0
  %477 = load i8, i8* %arrayidx762, align 1
  %conv763 = zext i8 %477 to i32
  %sub764 = sub nsw i32 %conv761, %conv763
  %478 = load i8, i8* %opacity.addr, align 1
  %conv765 = zext i8 %478 to i32
  %mul766 = mul nsw i32 %sub764, %conv765
  %add767 = add nsw i32 %shl759, %mul766
  %shr768 = ashr i32 %add767, 8
  %conv769 = trunc i32 %shr768 to i8
  %arrayidx770 = getelementptr inbounds [4 x i8], [4 x i8]* %inter749, i32 0, i64 0
  store i8 %conv769, i8* %arrayidx770, align 1
  %479 = load i8*, i8** %cmap1733, align 8
  %arrayidx771 = getelementptr inbounds i8, i8* %479, i64 1
  %480 = load i8, i8* %arrayidx771, align 1
  %conv772 = zext i8 %480 to i32
  %shl773 = shl i32 %conv772, 8
  %481 = load i8*, i8** %cmap2741, align 8
  %arrayidx774 = getelementptr inbounds i8, i8* %481, i64 1
  %482 = load i8, i8* %arrayidx774, align 1
  %conv775 = zext i8 %482 to i32
  %483 = load i8*, i8** %cmap1733, align 8
  %arrayidx776 = getelementptr inbounds i8, i8* %483, i64 1
  %484 = load i8, i8* %arrayidx776, align 1
  %conv777 = zext i8 %484 to i32
  %sub778 = sub nsw i32 %conv775, %conv777
  %485 = load i8, i8* %opacity.addr, align 1
  %conv779 = zext i8 %485 to i32
  %mul780 = mul nsw i32 %sub778, %conv779
  %add781 = add nsw i32 %shl773, %mul780
  %shr782 = ashr i32 %add781, 8
  %conv783 = trunc i32 %shr782 to i8
  %arrayidx784 = getelementptr inbounds [4 x i8], [4 x i8]* %inter749, i32 0, i64 1
  store i8 %conv783, i8* %arrayidx784, align 1
  %486 = load i8*, i8** %cmap1733, align 8
  %arrayidx785 = getelementptr inbounds i8, i8* %486, i64 2
  %487 = load i8, i8* %arrayidx785, align 1
  %conv786 = zext i8 %487 to i32
  %shl787 = shl i32 %conv786, 8
  %488 = load i8*, i8** %cmap2741, align 8
  %arrayidx788 = getelementptr inbounds i8, i8* %488, i64 2
  %489 = load i8, i8* %arrayidx788, align 1
  %conv789 = zext i8 %489 to i32
  %490 = load i8*, i8** %cmap1733, align 8
  %arrayidx790 = getelementptr inbounds i8, i8* %490, i64 2
  %491 = load i8, i8* %arrayidx790, align 1
  %conv791 = zext i8 %491 to i32
  %sub792 = sub nsw i32 %conv789, %conv791
  %492 = load i8, i8* %opacity.addr, align 1
  %conv793 = zext i8 %492 to i32
  %mul794 = mul nsw i32 %sub792, %conv793
  %add795 = add nsw i32 %shl787, %mul794
  %shr796 = ashr i32 %add795, 8
  %conv797 = trunc i32 %shr796 to i8
  %arrayidx798 = getelementptr inbounds [4 x i8], [4 x i8]* %inter749, i32 0, i64 2
  store i8 %conv797, i8* %arrayidx798, align 1
  %493 = load i8*, i8** %s1722, align 8
  %arrayidx799 = getelementptr inbounds i8, i8* %493, i64 1
  %494 = load i8, i8* %arrayidx799, align 1
  %arrayidx800 = getelementptr inbounds [4 x i8], [4 x i8]* %inter749, i32 0, i64 3
  store i8 %494, i8* %arrayidx800, align 1
  br label %if.end.860

if.else.801:                                      ; preds = %for.body.731
  %495 = load i8*, i8** %s1722, align 8
  %arrayidx802 = getelementptr inbounds i8, i8* %495, i64 1
  %496 = load i8, i8* %arrayidx802, align 1
  %conv803 = zext i8 %496 to i32
  %shl804 = shl i32 %conv803, 8
  %497 = load i8*, i8** %s2724, align 8
  %arrayidx805 = getelementptr inbounds i8, i8* %497, i64 1
  %498 = load i8, i8* %arrayidx805, align 1
  %conv806 = zext i8 %498 to i32
  %499 = load i8*, i8** %s1722, align 8
  %arrayidx807 = getelementptr inbounds i8, i8* %499, i64 1
  %500 = load i8, i8* %arrayidx807, align 1
  %conv808 = zext i8 %500 to i32
  %sub809 = sub nsw i32 %conv806, %conv808
  %501 = load i8, i8* %opacity.addr, align 1
  %conv810 = zext i8 %501 to i32
  %mul811 = mul nsw i32 %sub809, %conv810
  %add812 = add nsw i32 %shl804, %mul811
  %shr813 = ashr i32 %add812, 8
  %conv814 = trunc i32 %shr813 to i8
  %arrayidx815 = getelementptr inbounds [4 x i8], [4 x i8]* %inter749, i32 0, i64 3
  store i8 %conv814, i8* %arrayidx815, align 1
  %arrayidx816 = getelementptr inbounds [4 x i8], [4 x i8]* %inter749, i32 0, i64 3
  %502 = load i8, i8* %arrayidx816, align 1
  %tobool817 = icmp ne i8 %502, 0
  br i1 %tobool817, label %if.then.818, label %if.end.859

if.then.818:                                      ; preds = %if.else.801
  store i32 0, i32* %i, align 4
  br label %for.cond.819

for.cond.819:                                     ; preds = %for.inc.856, %if.then.818
  %503 = load i32, i32* %i, align 4
  %cmp820 = icmp slt i32 %503, 3
  br i1 %cmp820, label %for.body.822, label %for.end.858

for.body.822:                                     ; preds = %for.cond.819
  %504 = load i32, i32* %i, align 4
  %idxprom825 = sext i32 %504 to i64
  %505 = load i8*, i8** %cmap1733, align 8
  %arrayidx826 = getelementptr inbounds i8, i8* %505, i64 %idxprom825
  %506 = load i8, i8* %arrayidx826, align 1
  %conv827 = zext i8 %506 to i32
  %507 = load i8*, i8** %s1722, align 8
  %arrayidx828 = getelementptr inbounds i8, i8* %507, i64 1
  %508 = load i8, i8* %arrayidx828, align 1
  %conv829 = zext i8 %508 to i32
  %mul830 = mul nsw i32 %conv827, %conv829
  %conv831 = trunc i32 %mul830 to i16
  store i16 %conv831, i16* %a824, align 2
  %509 = load i32, i32* %i, align 4
  %idxprom834 = sext i32 %509 to i64
  %510 = load i8*, i8** %cmap2741, align 8
  %arrayidx835 = getelementptr inbounds i8, i8* %510, i64 %idxprom834
  %511 = load i8, i8* %arrayidx835, align 1
  %conv836 = zext i8 %511 to i32
  %512 = load i8*, i8** %s2724, align 8
  %arrayidx837 = getelementptr inbounds i8, i8* %512, i64 1
  %513 = load i8, i8* %arrayidx837, align 1
  %conv838 = zext i8 %513 to i32
  %mul839 = mul nsw i32 %conv836, %conv838
  %conv840 = trunc i32 %mul839 to i16
  store i16 %conv840, i16* %b833, align 2
  %514 = load i16, i16* %a824, align 2
  %conv841 = zext i16 %514 to i32
  %shl842 = shl i32 %conv841, 8
  %515 = load i16, i16* %b833, align 2
  %conv843 = zext i16 %515 to i32
  %516 = load i16, i16* %a824, align 2
  %conv844 = zext i16 %516 to i32
  %sub845 = sub nsw i32 %conv843, %conv844
  %517 = load i8, i8* %opacity.addr, align 1
  %conv846 = zext i8 %517 to i32
  %mul847 = mul nsw i32 %sub845, %conv846
  %add848 = add nsw i32 %shl842, %mul847
  %shr849 = ashr i32 %add848, 8
  %arrayidx850 = getelementptr inbounds [4 x i8], [4 x i8]* %inter749, i32 0, i64 3
  %518 = load i8, i8* %arrayidx850, align 1
  %conv851 = zext i8 %518 to i32
  %div852 = sdiv i32 %shr849, %conv851
  %conv853 = trunc i32 %div852 to i8
  %519 = load i32, i32* %i, align 4
  %idxprom854 = sext i32 %519 to i64
  %arrayidx855 = getelementptr inbounds [4 x i8], [4 x i8]* %inter749, i32 0, i64 %idxprom854
  store i8 %conv853, i8* %arrayidx855, align 1
  br label %for.inc.856

for.inc.856:                                      ; preds = %for.body.822
  %520 = load i32, i32* %i, align 4
  %inc857 = add nsw i32 %520, 1
  store i32 %inc857, i32* %i, align 4
  br label %for.cond.819

for.end.858:                                      ; preds = %for.cond.819
  br label %if.end.859

if.end.859:                                       ; preds = %for.end.858, %if.else.801
  br label %if.end.860

if.end.860:                                       ; preds = %if.end.859, %if.then.756
  %arrayidx861 = getelementptr inbounds [4 x i8], [4 x i8]* %inter749, i32 0, i64 3
  %521 = load i8, i8* %arrayidx861, align 1
  %conv862 = zext i8 %521 to i32
  switch i32 %conv862, label %sw.default.889 [
    i32 0, label %sw.bb.863
    i32 255, label %sw.bb.882
  ]

sw.bb.863:                                        ; preds = %if.end.860
  %522 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_y864 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %522, i32 0, i32 7
  %523 = load i32, i32* %offset_y864, align 4
  %524 = load i32, i32* %row, align 4
  %add865 = add nsw i32 %523, %524
  %525 = load i32, i32* %size, align 4
  %and866 = and i32 %add865, %525
  %526 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_x867 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %526, i32 0, i32 6
  %527 = load i32, i32* %offset_x867, align 4
  %528 = load i32, i32* %col, align 4
  %add868 = add nsw i32 %527, %528
  %529 = load i32, i32* %size, align 4
  %and869 = and i32 %add868, %529
  %xor870 = xor i32 %and866, %and869
  %tobool871 = icmp ne i32 %xor870, 0
  br i1 %tobool871, label %cond.true.872, label %cond.false.874

cond.true.872:                                    ; preds = %sw.bb.863
  %530 = load i8, i8* %dark, align 1
  %conv873 = zext i8 %530 to i32
  br label %cond.end.876

cond.false.874:                                   ; preds = %sw.bb.863
  %531 = load i8, i8* %light, align 1
  %conv875 = zext i8 %531 to i32
  br label %cond.end.876

cond.end.876:                                     ; preds = %cond.false.874, %cond.true.872
  %cond877 = phi i32 [ %conv873, %cond.true.872 ], [ %conv875, %cond.false.874 ]
  %conv878 = trunc i32 %cond877 to i8
  %532 = load i8*, i8** %d726, align 8
  %arrayidx879 = getelementptr inbounds i8, i8* %532, i64 2
  store i8 %conv878, i8* %arrayidx879, align 1
  %533 = load i8*, i8** %d726, align 8
  %arrayidx880 = getelementptr inbounds i8, i8* %533, i64 1
  store i8 %conv878, i8* %arrayidx880, align 1
  %534 = load i8*, i8** %d726, align 8
  %arrayidx881 = getelementptr inbounds i8, i8* %534, i64 0
  store i8 %conv878, i8* %arrayidx881, align 1
  br label %sw.epilog.938

sw.bb.882:                                        ; preds = %if.end.860
  %arrayidx883 = getelementptr inbounds [4 x i8], [4 x i8]* %inter749, i32 0, i64 0
  %535 = load i8, i8* %arrayidx883, align 1
  %536 = load i8*, i8** %d726, align 8
  %arrayidx884 = getelementptr inbounds i8, i8* %536, i64 0
  store i8 %535, i8* %arrayidx884, align 1
  %arrayidx885 = getelementptr inbounds [4 x i8], [4 x i8]* %inter749, i32 0, i64 1
  %537 = load i8, i8* %arrayidx885, align 1
  %538 = load i8*, i8** %d726, align 8
  %arrayidx886 = getelementptr inbounds i8, i8* %538, i64 1
  store i8 %537, i8* %arrayidx886, align 1
  %arrayidx887 = getelementptr inbounds [4 x i8], [4 x i8]* %inter749, i32 0, i64 2
  %539 = load i8, i8* %arrayidx887, align 1
  %540 = load i8*, i8** %d726, align 8
  %arrayidx888 = getelementptr inbounds i8, i8* %540, i64 2
  store i8 %539, i8* %arrayidx888, align 1
  br label %sw.epilog.938

sw.default.889:                                   ; preds = %if.end.860
  %arrayidx892 = getelementptr inbounds [4 x i8], [4 x i8]* %inter749, i32 0, i64 3
  %541 = load i8, i8* %arrayidx892, align 1
  %conv893 = zext i8 %541 to i32
  %add894 = add nsw i32 %conv893, 1
  store i32 %add894, i32* %alpha891, align 4
  %542 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_y897 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %542, i32 0, i32 7
  %543 = load i32, i32* %offset_y897, align 4
  %544 = load i32, i32* %row, align 4
  %add898 = add nsw i32 %543, %544
  %545 = load i32, i32* %size, align 4
  %and899 = and i32 %add898, %545
  %546 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_x900 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %546, i32 0, i32 6
  %547 = load i32, i32* %offset_x900, align 4
  %548 = load i32, i32* %col, align 4
  %add901 = add nsw i32 %547, %548
  %549 = load i32, i32* %size, align 4
  %and902 = and i32 %add901, %549
  %xor903 = xor i32 %and899, %and902
  %tobool904 = icmp ne i32 %xor903, 0
  br i1 %tobool904, label %cond.true.905, label %cond.false.907

cond.true.905:                                    ; preds = %sw.default.889
  %550 = load i8, i8* %dark, align 1
  %conv906 = zext i8 %550 to i32
  br label %cond.end.909

cond.false.907:                                   ; preds = %sw.default.889
  %551 = load i8, i8* %light, align 1
  %conv908 = zext i8 %551 to i32
  br label %cond.end.909

cond.end.909:                                     ; preds = %cond.false.907, %cond.true.905
  %cond910 = phi i32 [ %conv906, %cond.true.905 ], [ %conv908, %cond.false.907 ]
  store i32 %cond910, i32* %check896, align 4
  %552 = load i32, i32* %check896, align 4
  %shl911 = shl i32 %552, 8
  %arrayidx912 = getelementptr inbounds [4 x i8], [4 x i8]* %inter749, i32 0, i64 0
  %553 = load i8, i8* %arrayidx912, align 1
  %conv913 = zext i8 %553 to i32
  %554 = load i32, i32* %check896, align 4
  %sub914 = sub i32 %conv913, %554
  %555 = load i32, i32* %alpha891, align 4
  %mul915 = mul i32 %sub914, %555
  %add916 = add i32 %shl911, %mul915
  %shr917 = lshr i32 %add916, 8
  %conv918 = trunc i32 %shr917 to i8
  %556 = load i8*, i8** %d726, align 8
  %arrayidx919 = getelementptr inbounds i8, i8* %556, i64 0
  store i8 %conv918, i8* %arrayidx919, align 1
  %557 = load i32, i32* %check896, align 4
  %shl920 = shl i32 %557, 8
  %arrayidx921 = getelementptr inbounds [4 x i8], [4 x i8]* %inter749, i32 0, i64 1
  %558 = load i8, i8* %arrayidx921, align 1
  %conv922 = zext i8 %558 to i32
  %559 = load i32, i32* %check896, align 4
  %sub923 = sub i32 %conv922, %559
  %560 = load i32, i32* %alpha891, align 4
  %mul924 = mul i32 %sub923, %560
  %add925 = add i32 %shl920, %mul924
  %shr926 = lshr i32 %add925, 8
  %conv927 = trunc i32 %shr926 to i8
  %561 = load i8*, i8** %d726, align 8
  %arrayidx928 = getelementptr inbounds i8, i8* %561, i64 1
  store i8 %conv927, i8* %arrayidx928, align 1
  %562 = load i32, i32* %check896, align 4
  %shl929 = shl i32 %562, 8
  %arrayidx930 = getelementptr inbounds [4 x i8], [4 x i8]* %inter749, i32 0, i64 2
  %563 = load i8, i8* %arrayidx930, align 1
  %conv931 = zext i8 %563 to i32
  %564 = load i32, i32* %check896, align 4
  %sub932 = sub i32 %conv931, %564
  %565 = load i32, i32* %alpha891, align 4
  %mul933 = mul i32 %sub932, %565
  %add934 = add i32 %shl929, %mul933
  %shr935 = lshr i32 %add934, 8
  %conv936 = trunc i32 %shr935 to i8
  %566 = load i8*, i8** %d726, align 8
  %arrayidx937 = getelementptr inbounds i8, i8* %566, i64 2
  store i8 %conv936, i8* %arrayidx937, align 1
  br label %sw.epilog.938

sw.epilog.938:                                    ; preds = %cond.end.909, %sw.bb.882, %cond.end.876
  br label %for.inc.939

for.inc.939:                                      ; preds = %sw.epilog.938
  %567 = load i32, i32* %col, align 4
  %inc940 = add nsw i32 %567, 1
  store i32 %inc940, i32* %col, align 4
  %568 = load i8*, i8** %s1722, align 8
  %add.ptr941 = getelementptr inbounds i8, i8* %568, i64 2
  store i8* %add.ptr941, i8** %s1722, align 8
  %569 = load i8*, i8** %s2724, align 8
  %add.ptr942 = getelementptr inbounds i8, i8* %569, i64 2
  store i8* %add.ptr942, i8** %s2724, align 8
  %570 = load i8*, i8** %d726, align 8
  %add.ptr943 = getelementptr inbounds i8, i8* %570, i64 3
  store i8* %add.ptr943, i8** %d726, align 8
  br label %for.cond.727

for.end.944:                                      ; preds = %for.cond.727
  %571 = load i32, i32* %rowstride1.addr, align 4
  %572 = load i8*, i8** %src1, align 8
  %idx.ext945 = sext i32 %571 to i64
  %add.ptr946 = getelementptr inbounds i8, i8* %572, i64 %idx.ext945
  store i8* %add.ptr946, i8** %src1, align 8
  %573 = load i32, i32* %rowstride2.addr, align 4
  %574 = load i8*, i8** %src2, align 8
  %idx.ext947 = sext i32 %573 to i64
  %add.ptr948 = getelementptr inbounds i8, i8* %574, i64 %idx.ext947
  store i8* %add.ptr948, i8** %src2, align 8
  %575 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %rowstride949 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %575, i32 0, i32 5
  %576 = load i32, i32* %rowstride949, align 4
  %577 = load i8*, i8** %dest, align 8
  %idx.ext950 = sext i32 %576 to i64
  %add.ptr951 = getelementptr inbounds i8, i8* %577, i64 %idx.ext950
  store i8* %add.ptr951, i8** %dest, align 8
  br label %for.inc.952

for.inc.952:                                      ; preds = %for.end.944
  %578 = load i32, i32* %row, align 4
  %inc953 = add nsw i32 %578, 1
  store i32 %inc953, i32* %row, align 4
  br label %for.cond.716

for.end.954:                                      ; preds = %for.cond.716
  br label %sw.epilog.955

sw.epilog.955:                                    ; preds = %if.end.115, %for.end.954, %for.end.706, %for.end.612, %for.end.444, %for.end.398, %for.end.188
  %579 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %580 = load i32, i32* %x.addr, align 4
  %581 = load i32, i32* %y.addr, align 4
  %582 = load i32, i32* %width.addr, align 4
  %583 = load i32, i32* %height.addr, align 4
  call void @gimp_preview_area_queue_draw(%struct._GimpPreviewArea* %579, i32 %580, i32 %581, i32 %582, i32 %583)
  br label %return

return:                                           ; preds = %sw.epilog.955, %if.else.713, %if.else.618, %if.then.63, %if.then.54, %sw.bb.47, %sw.bb, %if.else.44, %if.else.38, %if.else.32, %if.else.26, %if.then.21, %if.else.16, %if.else.9
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define void @gimp_preview_area_mask(%struct._GimpPreviewArea* %area, i32 %x, i32 %y, i32 %width, i32 %height, i32 %type, i8* %buf1, i32 %rowstride1, i8* %buf2, i32 %rowstride2, i8* %mask, i32 %rowstride_mask) #3 {
entry:
  %area.addr = alloca %struct._GimpPreviewArea*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %buf1.addr = alloca i8*, align 8
  %rowstride1.addr = alloca i32, align 4
  %buf2.addr = alloca i8*, align 8
  %rowstride2.addr = alloca i32, align 4
  %mask.addr = alloca i8*, align 8
  %rowstride_mask.addr = alloca i32, align 4
  %src1 = alloca i8*, align 8
  %src2 = alloca i8*, align 8
  %src_mask = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %size = alloca i32, align 4
  %light = alloca i8, align 1
  %dark = alloca i8, align 1
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %bpp = alloca i32, align 4
  %s1 = alloca i8*, align 8
  %s2 = alloca i8*, align 8
  %m = alloca i8*, align 8
  %d = alloca i8*, align 8
  %s1210 = alloca i8*, align 8
  %s2212 = alloca i8*, align 8
  %m214 = alloca i8*, align 8
  %d216 = alloca i8*, align 8
  %alpha = alloca i32, align 4
  %check = alloca i32, align 4
  %alpha323 = alloca i32, align 4
  %check328 = alloca i32, align 4
  %inter = alloca [4 x i8], align 1
  %a = alloca i16, align 2
  %b = alloca i16, align 2
  %alpha515 = alloca i32, align 4
  %check520 = alloca i32, align 4
  %s1589 = alloca i8*, align 8
  %s2591 = alloca i8*, align 8
  %m593 = alloca i8*, align 8
  %d595 = alloca i8*, align 8
  %s1643 = alloca i8*, align 8
  %s2645 = alloca i8*, align 8
  %m647 = alloca i8*, align 8
  %d649 = alloca i8*, align 8
  %alpha686 = alloca i32, align 4
  %check691 = alloca i32, align 4
  %alpha747 = alloca i32, align 4
  %check752 = alloca i32, align 4
  %inter781 = alloca [2 x i8], align 1
  %a826 = alloca i16, align 2
  %b834 = alloca i16, align 2
  %alpha886 = alloca i32, align 4
  %check891 = alloca i32, align 4
  %s1951 = alloca i8*, align 8
  %s2953 = alloca i8*, align 8
  %m955 = alloca i8*, align 8
  %d957 = alloca i8*, align 8
  %cmap1 = alloca i8*, align 8
  %cmap2 = alloca i8*, align 8
  %s11055 = alloca i8*, align 8
  %s21057 = alloca i8*, align 8
  %m1059 = alloca i8*, align 8
  %d1061 = alloca i8*, align 8
  %cmap11068 = alloca i8*, align 8
  %cmap21076 = alloca i8*, align 8
  %alpha1116 = alloca i32, align 4
  %check1121 = alloca i32, align 4
  %alpha1195 = alloca i32, align 4
  %check1200 = alloca i32, align 4
  %inter1245 = alloca [4 x i8], align 1
  %a1324 = alloca i16, align 2
  %b1333 = alloca i16, align 2
  %alpha1392 = alloca i32, align 4
  %check1397 = alloca i32, align 4
  store %struct._GimpPreviewArea* %area, %struct._GimpPreviewArea** %area.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  store i8* %buf1, i8** %buf1.addr, align 8
  store i32 %rowstride1, i32* %rowstride1.addr, align 4
  store i8* %buf2, i8** %buf2.addr, align 8
  store i32 %rowstride2, i32* %rowstride2.addr, align 4
  store i8* %mask, i8** %mask.addr, align 8
  store i32 %rowstride_mask, i32* %rowstride_mask.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %1 = bitcast %struct._GimpPreviewArea* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_preview_area_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_preview_area_mask, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %width.addr, align 4
  %cmp12 = icmp sge i32 %13, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %height.addr, align 4
  %cmp14 = icmp sge i32 %14, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_preview_area_mask, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %15 = load i32, i32* %width.addr, align 4
  %cmp19 = icmp eq i32 %15, 0
  br i1 %cmp19, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.18
  %16 = load i32, i32* %height.addr, align 4
  %cmp20 = icmp eq i32 %16, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %lor.lhs.false, %do.end.18
  br label %return

if.end.22:                                        ; preds = %lor.lhs.false
  br label %do.body.23

do.body.23:                                       ; preds = %if.end.22
  %17 = load i8*, i8** %buf1.addr, align 8
  %cmp24 = icmp ne i8* %17, null
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.23
  br label %if.end.27

if.else.26:                                       ; preds = %do.body.23
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_preview_area_mask, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.27:                                        ; preds = %if.then.25
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  br label %do.body.29

do.body.29:                                       ; preds = %do.end.28
  %18 = load i8*, i8** %buf2.addr, align 8
  %cmp30 = icmp ne i8* %18, null
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.29
  br label %if.end.33

if.else.32:                                       ; preds = %do.body.29
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_preview_area_mask, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.33:                                        ; preds = %if.then.31
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  br label %do.body.35

do.body.35:                                       ; preds = %do.end.34
  %19 = load i8*, i8** %mask.addr, align 8
  %cmp36 = icmp ne i8* %19, null
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body.35
  br label %if.end.39

if.else.38:                                       ; preds = %do.body.35
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_preview_area_mask, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.39:                                        ; preds = %if.then.37
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.40
  %20 = load i32, i32* %rowstride1.addr, align 4
  %cmp42 = icmp sgt i32 %20, 0
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %do.body.41
  br label %if.end.45

if.else.44:                                       ; preds = %do.body.41
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_preview_area_mask, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %do.body.47

do.body.47:                                       ; preds = %do.end.46
  %21 = load i32, i32* %rowstride2.addr, align 4
  %cmp48 = icmp sgt i32 %21, 0
  br i1 %cmp48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %do.body.47
  br label %if.end.51

if.else.50:                                       ; preds = %do.body.47
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_preview_area_mask, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.51:                                        ; preds = %if.then.49
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  br label %do.body.53

do.body.53:                                       ; preds = %do.end.52
  %22 = load i32, i32* %rowstride_mask.addr, align 4
  %cmp54 = icmp sgt i32 %22, 0
  br i1 %cmp54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %do.body.53
  br label %if.end.57

if.else.56:                                       ; preds = %do.body.53
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_preview_area_mask, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.57:                                        ; preds = %if.then.55
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  %23 = load i32, i32* %x.addr, align 4
  %24 = load i32, i32* %width.addr, align 4
  %add = add nsw i32 %23, %24
  %cmp59 = icmp slt i32 %add, 0
  br i1 %cmp59, label %if.then.63, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %do.end.58
  %25 = load i32, i32* %x.addr, align 4
  %26 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %width61 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %26, i32 0, i32 3
  %27 = load i32, i32* %width61, align 4
  %cmp62 = icmp sge i32 %25, %27
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %lor.lhs.false.60, %do.end.58
  br label %return

if.end.64:                                        ; preds = %lor.lhs.false.60
  %28 = load i32, i32* %y.addr, align 4
  %29 = load i32, i32* %height.addr, align 4
  %add65 = add nsw i32 %28, %29
  %cmp66 = icmp slt i32 %add65, 0
  br i1 %cmp66, label %if.then.70, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %if.end.64
  %30 = load i32, i32* %y.addr, align 4
  %31 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %height68 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %31, i32 0, i32 4
  %32 = load i32, i32* %height68, align 4
  %cmp69 = icmp sge i32 %30, %32
  br i1 %cmp69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %lor.lhs.false.67, %if.end.64
  br label %return

if.end.71:                                        ; preds = %lor.lhs.false.67
  %33 = load i32, i32* %x.addr, align 4
  %cmp72 = icmp slt i32 %33, 0
  br i1 %cmp72, label %if.then.73, label %if.end.84

if.then.73:                                       ; preds = %if.end.71
  %34 = load i32, i32* %type.addr, align 4
  %call75 = call i32 @gimp_preview_area_image_type_bytes(i32 %34)
  store i32 %call75, i32* %bpp, align 4
  %35 = load i32, i32* %x.addr, align 4
  %36 = load i32, i32* %bpp, align 4
  %mul = mul nsw i32 %35, %36
  %37 = load i8*, i8** %buf1.addr, align 8
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %idx.neg
  store i8* %add.ptr, i8** %buf1.addr, align 8
  %38 = load i32, i32* %x.addr, align 4
  %39 = load i32, i32* %bpp, align 4
  %mul76 = mul nsw i32 %38, %39
  %40 = load i8*, i8** %buf2.addr, align 8
  %idx.ext77 = sext i32 %mul76 to i64
  %idx.neg78 = sub i64 0, %idx.ext77
  %add.ptr79 = getelementptr inbounds i8, i8* %40, i64 %idx.neg78
  store i8* %add.ptr79, i8** %buf2.addr, align 8
  %41 = load i32, i32* %x.addr, align 4
  %42 = load i8*, i8** %mask.addr, align 8
  %idx.ext80 = sext i32 %41 to i64
  %idx.neg81 = sub i64 0, %idx.ext80
  %add.ptr82 = getelementptr inbounds i8, i8* %42, i64 %idx.neg81
  store i8* %add.ptr82, i8** %mask.addr, align 8
  %43 = load i32, i32* %x.addr, align 4
  %44 = load i32, i32* %width.addr, align 4
  %add83 = add nsw i32 %44, %43
  store i32 %add83, i32* %width.addr, align 4
  store i32 0, i32* %x.addr, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.73, %if.end.71
  %45 = load i32, i32* %x.addr, align 4
  %46 = load i32, i32* %width.addr, align 4
  %add85 = add nsw i32 %45, %46
  %47 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %width86 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %47, i32 0, i32 3
  %48 = load i32, i32* %width86, align 4
  %cmp87 = icmp sgt i32 %add85, %48
  br i1 %cmp87, label %if.then.88, label %if.end.90

if.then.88:                                       ; preds = %if.end.84
  %49 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %width89 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %49, i32 0, i32 3
  %50 = load i32, i32* %width89, align 4
  %51 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 %50, %51
  store i32 %sub, i32* %width.addr, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.88, %if.end.84
  %52 = load i32, i32* %y.addr, align 4
  %cmp91 = icmp slt i32 %52, 0
  br i1 %cmp91, label %if.then.92, label %if.end.106

if.then.92:                                       ; preds = %if.end.90
  %53 = load i32, i32* %y.addr, align 4
  %54 = load i32, i32* %rowstride1.addr, align 4
  %mul93 = mul nsw i32 %53, %54
  %55 = load i8*, i8** %buf1.addr, align 8
  %idx.ext94 = sext i32 %mul93 to i64
  %idx.neg95 = sub i64 0, %idx.ext94
  %add.ptr96 = getelementptr inbounds i8, i8* %55, i64 %idx.neg95
  store i8* %add.ptr96, i8** %buf1.addr, align 8
  %56 = load i32, i32* %y.addr, align 4
  %57 = load i32, i32* %rowstride2.addr, align 4
  %mul97 = mul nsw i32 %56, %57
  %58 = load i8*, i8** %buf2.addr, align 8
  %idx.ext98 = sext i32 %mul97 to i64
  %idx.neg99 = sub i64 0, %idx.ext98
  %add.ptr100 = getelementptr inbounds i8, i8* %58, i64 %idx.neg99
  store i8* %add.ptr100, i8** %buf2.addr, align 8
  %59 = load i32, i32* %y.addr, align 4
  %60 = load i32, i32* %rowstride_mask.addr, align 4
  %mul101 = mul nsw i32 %59, %60
  %61 = load i8*, i8** %mask.addr, align 8
  %idx.ext102 = sext i32 %mul101 to i64
  %idx.neg103 = sub i64 0, %idx.ext102
  %add.ptr104 = getelementptr inbounds i8, i8* %61, i64 %idx.neg103
  store i8* %add.ptr104, i8** %mask.addr, align 8
  %62 = load i32, i32* %y.addr, align 4
  %63 = load i32, i32* %height.addr, align 4
  %add105 = add nsw i32 %63, %62
  store i32 %add105, i32* %height.addr, align 4
  store i32 0, i32* %y.addr, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.92, %if.end.90
  %64 = load i32, i32* %y.addr, align 4
  %65 = load i32, i32* %height.addr, align 4
  %add107 = add nsw i32 %64, %65
  %66 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %height108 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %66, i32 0, i32 4
  %67 = load i32, i32* %height108, align 4
  %cmp109 = icmp sgt i32 %add107, %67
  br i1 %cmp109, label %if.then.110, label %if.end.113

if.then.110:                                      ; preds = %if.end.106
  %68 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %height111 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %68, i32 0, i32 4
  %69 = load i32, i32* %height111, align 4
  %70 = load i32, i32* %y.addr, align 4
  %sub112 = sub nsw i32 %69, %70
  store i32 %sub112, i32* %height.addr, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.110, %if.end.106
  %71 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %buf = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %71, i32 0, i32 10
  %72 = load i8*, i8** %buf, align 8
  %tobool114 = icmp ne i8* %72, null
  br i1 %tobool114, label %if.end.124, label %if.then.115

if.then.115:                                      ; preds = %if.end.113
  %73 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %width116 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %73, i32 0, i32 3
  %74 = load i32, i32* %width116, align 4
  %mul117 = mul nsw i32 %74, 3
  %add118 = add nsw i32 %mul117, 3
  %and = and i32 %add118, -4
  %75 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %rowstride = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %75, i32 0, i32 5
  store i32 %and, i32* %rowstride, align 4
  %76 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %rowstride119 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %76, i32 0, i32 5
  %77 = load i32, i32* %rowstride119, align 4
  %78 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %height120 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %78, i32 0, i32 4
  %79 = load i32, i32* %height120, align 4
  %mul121 = mul nsw i32 %77, %79
  %conv = sext i32 %mul121 to i64
  %call122 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  %80 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %buf123 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %80, i32 0, i32 10
  store i8* %call122, i8** %buf123, align 8
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.115, %if.end.113
  %81 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %check_size = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %81, i32 0, i32 1
  %82 = load i32, i32* %check_size, align 4
  %add125 = add i32 2, %82
  %shl = shl i32 1, %add125
  store i32 %shl, i32* %size, align 4
  %83 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %check_type = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %83, i32 0, i32 2
  %84 = load i32, i32* %check_type, align 4
  call void @gimp_checks_get_shades(i32 %84, i8* %light, i8* %dark)
  %85 = load i8*, i8** %buf1.addr, align 8
  store i8* %85, i8** %src1, align 8
  %86 = load i8*, i8** %buf2.addr, align 8
  store i8* %86, i8** %src2, align 8
  %87 = load i8*, i8** %mask.addr, align 8
  store i8* %87, i8** %src_mask, align 8
  %88 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %buf126 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %88, i32 0, i32 10
  %89 = load i8*, i8** %buf126, align 8
  %90 = load i32, i32* %x.addr, align 4
  %mul127 = mul nsw i32 %90, 3
  %idx.ext128 = sext i32 %mul127 to i64
  %add.ptr129 = getelementptr inbounds i8, i8* %89, i64 %idx.ext128
  %91 = load i32, i32* %y.addr, align 4
  %92 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %rowstride130 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %92, i32 0, i32 5
  %93 = load i32, i32* %rowstride130, align 4
  %mul131 = mul nsw i32 %91, %93
  %idx.ext132 = sext i32 %mul131 to i64
  %add.ptr133 = getelementptr inbounds i8, i8* %add.ptr129, i64 %idx.ext132
  store i8* %add.ptr133, i8** %dest, align 8
  %94 = load i32, i32* %type.addr, align 4
  switch i32 %94, label %sw.epilog.1460 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.203
    i32 2, label %sw.bb.583
    i32 3, label %sw.bb.636
    i32 4, label %sw.bb.938
    i32 5, label %sw.bb.1040
  ]

sw.bb:                                            ; preds = %if.end.124
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.200, %sw.bb
  %95 = load i32, i32* %row, align 4
  %96 = load i32, i32* %height.addr, align 4
  %cmp134 = icmp slt i32 %95, %96
  br i1 %cmp134, label %for.body, label %for.end.202

for.body:                                         ; preds = %for.cond
  %97 = load i8*, i8** %src1, align 8
  store i8* %97, i8** %s1, align 8
  %98 = load i8*, i8** %src2, align 8
  store i8* %98, i8** %s2, align 8
  %99 = load i8*, i8** %src_mask, align 8
  store i8* %99, i8** %m, align 8
  %100 = load i8*, i8** %dest, align 8
  store i8* %100, i8** %d, align 8
  %101 = load i32, i32* %x.addr, align 4
  store i32 %101, i32* %col, align 4
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc, %for.body
  %102 = load i32, i32* %col, align 4
  %103 = load i32, i32* %x.addr, align 4
  %104 = load i32, i32* %width.addr, align 4
  %add141 = add nsw i32 %103, %104
  %cmp142 = icmp slt i32 %102, %add141
  br i1 %cmp142, label %for.body.144, label %for.end

for.body.144:                                     ; preds = %for.cond.140
  %105 = load i8*, i8** %s1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %105, i64 0
  %106 = load i8, i8* %arrayidx, align 1
  %conv145 = zext i8 %106 to i32
  %shl146 = shl i32 %conv145, 8
  %107 = load i8*, i8** %s2, align 8
  %arrayidx147 = getelementptr inbounds i8, i8* %107, i64 0
  %108 = load i8, i8* %arrayidx147, align 1
  %conv148 = zext i8 %108 to i32
  %109 = load i8*, i8** %s1, align 8
  %arrayidx149 = getelementptr inbounds i8, i8* %109, i64 0
  %110 = load i8, i8* %arrayidx149, align 1
  %conv150 = zext i8 %110 to i32
  %sub151 = sub nsw i32 %conv148, %conv150
  %111 = load i8*, i8** %m, align 8
  %arrayidx152 = getelementptr inbounds i8, i8* %111, i64 0
  %112 = load i8, i8* %arrayidx152, align 1
  %conv153 = zext i8 %112 to i32
  %mul154 = mul nsw i32 %sub151, %conv153
  %add155 = add nsw i32 %shl146, %mul154
  %shr = ashr i32 %add155, 8
  %conv156 = trunc i32 %shr to i8
  %113 = load i8*, i8** %d, align 8
  %arrayidx157 = getelementptr inbounds i8, i8* %113, i64 0
  store i8 %conv156, i8* %arrayidx157, align 1
  %114 = load i8*, i8** %s1, align 8
  %arrayidx158 = getelementptr inbounds i8, i8* %114, i64 1
  %115 = load i8, i8* %arrayidx158, align 1
  %conv159 = zext i8 %115 to i32
  %shl160 = shl i32 %conv159, 8
  %116 = load i8*, i8** %s2, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %116, i64 1
  %117 = load i8, i8* %arrayidx161, align 1
  %conv162 = zext i8 %117 to i32
  %118 = load i8*, i8** %s1, align 8
  %arrayidx163 = getelementptr inbounds i8, i8* %118, i64 1
  %119 = load i8, i8* %arrayidx163, align 1
  %conv164 = zext i8 %119 to i32
  %sub165 = sub nsw i32 %conv162, %conv164
  %120 = load i8*, i8** %m, align 8
  %arrayidx166 = getelementptr inbounds i8, i8* %120, i64 0
  %121 = load i8, i8* %arrayidx166, align 1
  %conv167 = zext i8 %121 to i32
  %mul168 = mul nsw i32 %sub165, %conv167
  %add169 = add nsw i32 %shl160, %mul168
  %shr170 = ashr i32 %add169, 8
  %conv171 = trunc i32 %shr170 to i8
  %122 = load i8*, i8** %d, align 8
  %arrayidx172 = getelementptr inbounds i8, i8* %122, i64 1
  store i8 %conv171, i8* %arrayidx172, align 1
  %123 = load i8*, i8** %s1, align 8
  %arrayidx173 = getelementptr inbounds i8, i8* %123, i64 2
  %124 = load i8, i8* %arrayidx173, align 1
  %conv174 = zext i8 %124 to i32
  %shl175 = shl i32 %conv174, 8
  %125 = load i8*, i8** %s2, align 8
  %arrayidx176 = getelementptr inbounds i8, i8* %125, i64 2
  %126 = load i8, i8* %arrayidx176, align 1
  %conv177 = zext i8 %126 to i32
  %127 = load i8*, i8** %s1, align 8
  %arrayidx178 = getelementptr inbounds i8, i8* %127, i64 2
  %128 = load i8, i8* %arrayidx178, align 1
  %conv179 = zext i8 %128 to i32
  %sub180 = sub nsw i32 %conv177, %conv179
  %129 = load i8*, i8** %m, align 8
  %arrayidx181 = getelementptr inbounds i8, i8* %129, i64 0
  %130 = load i8, i8* %arrayidx181, align 1
  %conv182 = zext i8 %130 to i32
  %mul183 = mul nsw i32 %sub180, %conv182
  %add184 = add nsw i32 %shl175, %mul183
  %shr185 = ashr i32 %add184, 8
  %conv186 = trunc i32 %shr185 to i8
  %131 = load i8*, i8** %d, align 8
  %arrayidx187 = getelementptr inbounds i8, i8* %131, i64 2
  store i8 %conv186, i8* %arrayidx187, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.144
  %132 = load i32, i32* %col, align 4
  %inc = add nsw i32 %132, 1
  store i32 %inc, i32* %col, align 4
  %133 = load i8*, i8** %s1, align 8
  %add.ptr188 = getelementptr inbounds i8, i8* %133, i64 3
  store i8* %add.ptr188, i8** %s1, align 8
  %134 = load i8*, i8** %s2, align 8
  %add.ptr189 = getelementptr inbounds i8, i8* %134, i64 3
  store i8* %add.ptr189, i8** %s2, align 8
  %135 = load i8*, i8** %m, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %incdec.ptr, i8** %m, align 8
  %136 = load i8*, i8** %d, align 8
  %add.ptr190 = getelementptr inbounds i8, i8* %136, i64 3
  store i8* %add.ptr190, i8** %d, align 8
  br label %for.cond.140

for.end:                                          ; preds = %for.cond.140
  %137 = load i32, i32* %rowstride1.addr, align 4
  %138 = load i8*, i8** %src1, align 8
  %idx.ext191 = sext i32 %137 to i64
  %add.ptr192 = getelementptr inbounds i8, i8* %138, i64 %idx.ext191
  store i8* %add.ptr192, i8** %src1, align 8
  %139 = load i32, i32* %rowstride2.addr, align 4
  %140 = load i8*, i8** %src2, align 8
  %idx.ext193 = sext i32 %139 to i64
  %add.ptr194 = getelementptr inbounds i8, i8* %140, i64 %idx.ext193
  store i8* %add.ptr194, i8** %src2, align 8
  %141 = load i32, i32* %rowstride_mask.addr, align 4
  %142 = load i8*, i8** %src_mask, align 8
  %idx.ext195 = sext i32 %141 to i64
  %add.ptr196 = getelementptr inbounds i8, i8* %142, i64 %idx.ext195
  store i8* %add.ptr196, i8** %src_mask, align 8
  %143 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %rowstride197 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %143, i32 0, i32 5
  %144 = load i32, i32* %rowstride197, align 4
  %145 = load i8*, i8** %dest, align 8
  %idx.ext198 = sext i32 %144 to i64
  %add.ptr199 = getelementptr inbounds i8, i8* %145, i64 %idx.ext198
  store i8* %add.ptr199, i8** %dest, align 8
  br label %for.inc.200

for.inc.200:                                      ; preds = %for.end
  %146 = load i32, i32* %row, align 4
  %inc201 = add nsw i32 %146, 1
  store i32 %inc201, i32* %row, align 4
  br label %for.cond

for.end.202:                                      ; preds = %for.cond
  br label %sw.epilog.1460

sw.bb.203:                                        ; preds = %if.end.124
  %147 = load i32, i32* %y.addr, align 4
  store i32 %147, i32* %row, align 4
  br label %for.cond.204

for.cond.204:                                     ; preds = %for.inc.580, %sw.bb.203
  %148 = load i32, i32* %row, align 4
  %149 = load i32, i32* %y.addr, align 4
  %150 = load i32, i32* %height.addr, align 4
  %add205 = add nsw i32 %149, %150
  %cmp206 = icmp slt i32 %148, %add205
  br i1 %cmp206, label %for.body.208, label %for.end.582

for.body.208:                                     ; preds = %for.cond.204
  %151 = load i8*, i8** %src1, align 8
  store i8* %151, i8** %s1210, align 8
  %152 = load i8*, i8** %src2, align 8
  store i8* %152, i8** %s2212, align 8
  %153 = load i8*, i8** %src_mask, align 8
  store i8* %153, i8** %m214, align 8
  %154 = load i8*, i8** %dest, align 8
  store i8* %154, i8** %d216, align 8
  %155 = load i32, i32* %x.addr, align 4
  store i32 %155, i32* %col, align 4
  br label %for.cond.217

for.cond.217:                                     ; preds = %for.inc.564, %for.body.208
  %156 = load i32, i32* %col, align 4
  %157 = load i32, i32* %x.addr, align 4
  %158 = load i32, i32* %width.addr, align 4
  %add218 = add nsw i32 %157, %158
  %cmp219 = icmp slt i32 %156, %add218
  br i1 %cmp219, label %for.body.221, label %for.end.570

for.body.221:                                     ; preds = %for.cond.217
  %159 = load i8*, i8** %m214, align 8
  %arrayidx222 = getelementptr inbounds i8, i8* %159, i64 0
  %160 = load i8, i8* %arrayidx222, align 1
  %conv223 = zext i8 %160 to i32
  switch i32 %conv223, label %sw.default.371 [
    i32 0, label %sw.bb.224
    i32 255, label %sw.bb.292
  ]

sw.bb.224:                                        ; preds = %for.body.221
  %161 = load i8*, i8** %s1210, align 8
  %arrayidx225 = getelementptr inbounds i8, i8* %161, i64 3
  %162 = load i8, i8* %arrayidx225, align 1
  %conv226 = zext i8 %162 to i32
  switch i32 %conv226, label %sw.default [
    i32 0, label %sw.bb.227
    i32 255, label %sw.bb.239
  ]

sw.bb.227:                                        ; preds = %sw.bb.224
  %163 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %163, i32 0, i32 7
  %164 = load i32, i32* %offset_y, align 4
  %165 = load i32, i32* %row, align 4
  %add228 = add nsw i32 %164, %165
  %166 = load i32, i32* %size, align 4
  %and229 = and i32 %add228, %166
  %167 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %167, i32 0, i32 6
  %168 = load i32, i32* %offset_x, align 4
  %169 = load i32, i32* %col, align 4
  %add230 = add nsw i32 %168, %169
  %170 = load i32, i32* %size, align 4
  %and231 = and i32 %add230, %170
  %xor = xor i32 %and229, %and231
  %tobool232 = icmp ne i32 %xor, 0
  br i1 %tobool232, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.227
  %171 = load i8, i8* %dark, align 1
  %conv233 = zext i8 %171 to i32
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.227
  %172 = load i8, i8* %light, align 1
  %conv234 = zext i8 %172 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv233, %cond.true ], [ %conv234, %cond.false ]
  %conv235 = trunc i32 %cond to i8
  %173 = load i8*, i8** %d216, align 8
  %arrayidx236 = getelementptr inbounds i8, i8* %173, i64 2
  store i8 %conv235, i8* %arrayidx236, align 1
  %174 = load i8*, i8** %d216, align 8
  %arrayidx237 = getelementptr inbounds i8, i8* %174, i64 1
  store i8 %conv235, i8* %arrayidx237, align 1
  %175 = load i8*, i8** %d216, align 8
  %arrayidx238 = getelementptr inbounds i8, i8* %175, i64 0
  store i8 %conv235, i8* %arrayidx238, align 1
  br label %sw.epilog

sw.bb.239:                                        ; preds = %sw.bb.224
  %176 = load i8*, i8** %s1210, align 8
  %arrayidx240 = getelementptr inbounds i8, i8* %176, i64 0
  %177 = load i8, i8* %arrayidx240, align 1
  %178 = load i8*, i8** %d216, align 8
  %arrayidx241 = getelementptr inbounds i8, i8* %178, i64 0
  store i8 %177, i8* %arrayidx241, align 1
  %179 = load i8*, i8** %s1210, align 8
  %arrayidx242 = getelementptr inbounds i8, i8* %179, i64 1
  %180 = load i8, i8* %arrayidx242, align 1
  %181 = load i8*, i8** %d216, align 8
  %arrayidx243 = getelementptr inbounds i8, i8* %181, i64 1
  store i8 %180, i8* %arrayidx243, align 1
  %182 = load i8*, i8** %s1210, align 8
  %arrayidx244 = getelementptr inbounds i8, i8* %182, i64 2
  %183 = load i8, i8* %arrayidx244, align 1
  %184 = load i8*, i8** %d216, align 8
  %arrayidx245 = getelementptr inbounds i8, i8* %184, i64 2
  store i8 %183, i8* %arrayidx245, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.224
  %185 = load i8*, i8** %s1210, align 8
  %arrayidx247 = getelementptr inbounds i8, i8* %185, i64 3
  %186 = load i8, i8* %arrayidx247, align 1
  %conv248 = zext i8 %186 to i32
  %add249 = add nsw i32 %conv248, 1
  store i32 %add249, i32* %alpha, align 4
  %187 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_y251 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %187, i32 0, i32 7
  %188 = load i32, i32* %offset_y251, align 4
  %189 = load i32, i32* %row, align 4
  %add252 = add nsw i32 %188, %189
  %190 = load i32, i32* %size, align 4
  %and253 = and i32 %add252, %190
  %191 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_x254 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %191, i32 0, i32 6
  %192 = load i32, i32* %offset_x254, align 4
  %193 = load i32, i32* %col, align 4
  %add255 = add nsw i32 %192, %193
  %194 = load i32, i32* %size, align 4
  %and256 = and i32 %add255, %194
  %xor257 = xor i32 %and253, %and256
  %tobool258 = icmp ne i32 %xor257, 0
  br i1 %tobool258, label %cond.true.259, label %cond.false.261

cond.true.259:                                    ; preds = %sw.default
  %195 = load i8, i8* %dark, align 1
  %conv260 = zext i8 %195 to i32
  br label %cond.end.263

cond.false.261:                                   ; preds = %sw.default
  %196 = load i8, i8* %light, align 1
  %conv262 = zext i8 %196 to i32
  br label %cond.end.263

cond.end.263:                                     ; preds = %cond.false.261, %cond.true.259
  %cond264 = phi i32 [ %conv260, %cond.true.259 ], [ %conv262, %cond.false.261 ]
  store i32 %cond264, i32* %check, align 4
  %197 = load i32, i32* %check, align 4
  %shl265 = shl i32 %197, 8
  %198 = load i8*, i8** %s1210, align 8
  %arrayidx266 = getelementptr inbounds i8, i8* %198, i64 0
  %199 = load i8, i8* %arrayidx266, align 1
  %conv267 = zext i8 %199 to i32
  %200 = load i32, i32* %check, align 4
  %sub268 = sub i32 %conv267, %200
  %201 = load i32, i32* %alpha, align 4
  %mul269 = mul i32 %sub268, %201
  %add270 = add i32 %shl265, %mul269
  %shr271 = lshr i32 %add270, 8
  %conv272 = trunc i32 %shr271 to i8
  %202 = load i8*, i8** %d216, align 8
  %arrayidx273 = getelementptr inbounds i8, i8* %202, i64 0
  store i8 %conv272, i8* %arrayidx273, align 1
  %203 = load i32, i32* %check, align 4
  %shl274 = shl i32 %203, 8
  %204 = load i8*, i8** %s1210, align 8
  %arrayidx275 = getelementptr inbounds i8, i8* %204, i64 1
  %205 = load i8, i8* %arrayidx275, align 1
  %conv276 = zext i8 %205 to i32
  %206 = load i32, i32* %check, align 4
  %sub277 = sub i32 %conv276, %206
  %207 = load i32, i32* %alpha, align 4
  %mul278 = mul i32 %sub277, %207
  %add279 = add i32 %shl274, %mul278
  %shr280 = lshr i32 %add279, 8
  %conv281 = trunc i32 %shr280 to i8
  %208 = load i8*, i8** %d216, align 8
  %arrayidx282 = getelementptr inbounds i8, i8* %208, i64 1
  store i8 %conv281, i8* %arrayidx282, align 1
  %209 = load i32, i32* %check, align 4
  %shl283 = shl i32 %209, 8
  %210 = load i8*, i8** %s1210, align 8
  %arrayidx284 = getelementptr inbounds i8, i8* %210, i64 2
  %211 = load i8, i8* %arrayidx284, align 1
  %conv285 = zext i8 %211 to i32
  %212 = load i32, i32* %check, align 4
  %sub286 = sub i32 %conv285, %212
  %213 = load i32, i32* %alpha, align 4
  %mul287 = mul i32 %sub286, %213
  %add288 = add i32 %shl283, %mul287
  %shr289 = lshr i32 %add288, 8
  %conv290 = trunc i32 %shr289 to i8
  %214 = load i8*, i8** %d216, align 8
  %arrayidx291 = getelementptr inbounds i8, i8* %214, i64 2
  store i8 %conv290, i8* %arrayidx291, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.263, %sw.bb.239, %cond.end
  br label %sw.epilog.563

sw.bb.292:                                        ; preds = %for.body.221
  %215 = load i8*, i8** %s2212, align 8
  %arrayidx293 = getelementptr inbounds i8, i8* %215, i64 3
  %216 = load i8, i8* %arrayidx293, align 1
  %conv294 = zext i8 %216 to i32
  switch i32 %conv294, label %sw.default.321 [
    i32 0, label %sw.bb.295
    i32 255, label %sw.bb.314
  ]

sw.bb.295:                                        ; preds = %sw.bb.292
  %217 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_y296 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %217, i32 0, i32 7
  %218 = load i32, i32* %offset_y296, align 4
  %219 = load i32, i32* %row, align 4
  %add297 = add nsw i32 %218, %219
  %220 = load i32, i32* %size, align 4
  %and298 = and i32 %add297, %220
  %221 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_x299 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %221, i32 0, i32 6
  %222 = load i32, i32* %offset_x299, align 4
  %223 = load i32, i32* %col, align 4
  %add300 = add nsw i32 %222, %223
  %224 = load i32, i32* %size, align 4
  %and301 = and i32 %add300, %224
  %xor302 = xor i32 %and298, %and301
  %tobool303 = icmp ne i32 %xor302, 0
  br i1 %tobool303, label %cond.true.304, label %cond.false.306

cond.true.304:                                    ; preds = %sw.bb.295
  %225 = load i8, i8* %dark, align 1
  %conv305 = zext i8 %225 to i32
  br label %cond.end.308

cond.false.306:                                   ; preds = %sw.bb.295
  %226 = load i8, i8* %light, align 1
  %conv307 = zext i8 %226 to i32
  br label %cond.end.308

cond.end.308:                                     ; preds = %cond.false.306, %cond.true.304
  %cond309 = phi i32 [ %conv305, %cond.true.304 ], [ %conv307, %cond.false.306 ]
  %conv310 = trunc i32 %cond309 to i8
  %227 = load i8*, i8** %d216, align 8
  %arrayidx311 = getelementptr inbounds i8, i8* %227, i64 2
  store i8 %conv310, i8* %arrayidx311, align 1
  %228 = load i8*, i8** %d216, align 8
  %arrayidx312 = getelementptr inbounds i8, i8* %228, i64 1
  store i8 %conv310, i8* %arrayidx312, align 1
  %229 = load i8*, i8** %d216, align 8
  %arrayidx313 = getelementptr inbounds i8, i8* %229, i64 0
  store i8 %conv310, i8* %arrayidx313, align 1
  br label %sw.epilog.370

sw.bb.314:                                        ; preds = %sw.bb.292
  %230 = load i8*, i8** %s2212, align 8
  %arrayidx315 = getelementptr inbounds i8, i8* %230, i64 0
  %231 = load i8, i8* %arrayidx315, align 1
  %232 = load i8*, i8** %d216, align 8
  %arrayidx316 = getelementptr inbounds i8, i8* %232, i64 0
  store i8 %231, i8* %arrayidx316, align 1
  %233 = load i8*, i8** %s2212, align 8
  %arrayidx317 = getelementptr inbounds i8, i8* %233, i64 1
  %234 = load i8, i8* %arrayidx317, align 1
  %235 = load i8*, i8** %d216, align 8
  %arrayidx318 = getelementptr inbounds i8, i8* %235, i64 1
  store i8 %234, i8* %arrayidx318, align 1
  %236 = load i8*, i8** %s2212, align 8
  %arrayidx319 = getelementptr inbounds i8, i8* %236, i64 2
  %237 = load i8, i8* %arrayidx319, align 1
  %238 = load i8*, i8** %d216, align 8
  %arrayidx320 = getelementptr inbounds i8, i8* %238, i64 2
  store i8 %237, i8* %arrayidx320, align 1
  br label %sw.epilog.370

sw.default.321:                                   ; preds = %sw.bb.292
  %239 = load i8*, i8** %s2212, align 8
  %arrayidx324 = getelementptr inbounds i8, i8* %239, i64 3
  %240 = load i8, i8* %arrayidx324, align 1
  %conv325 = zext i8 %240 to i32
  %add326 = add nsw i32 %conv325, 1
  store i32 %add326, i32* %alpha323, align 4
  %241 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_y329 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %241, i32 0, i32 7
  %242 = load i32, i32* %offset_y329, align 4
  %243 = load i32, i32* %row, align 4
  %add330 = add nsw i32 %242, %243
  %244 = load i32, i32* %size, align 4
  %and331 = and i32 %add330, %244
  %245 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_x332 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %245, i32 0, i32 6
  %246 = load i32, i32* %offset_x332, align 4
  %247 = load i32, i32* %col, align 4
  %add333 = add nsw i32 %246, %247
  %248 = load i32, i32* %size, align 4
  %and334 = and i32 %add333, %248
  %xor335 = xor i32 %and331, %and334
  %tobool336 = icmp ne i32 %xor335, 0
  br i1 %tobool336, label %cond.true.337, label %cond.false.339

cond.true.337:                                    ; preds = %sw.default.321
  %249 = load i8, i8* %dark, align 1
  %conv338 = zext i8 %249 to i32
  br label %cond.end.341

cond.false.339:                                   ; preds = %sw.default.321
  %250 = load i8, i8* %light, align 1
  %conv340 = zext i8 %250 to i32
  br label %cond.end.341

cond.end.341:                                     ; preds = %cond.false.339, %cond.true.337
  %cond342 = phi i32 [ %conv338, %cond.true.337 ], [ %conv340, %cond.false.339 ]
  store i32 %cond342, i32* %check328, align 4
  %251 = load i32, i32* %check328, align 4
  %shl343 = shl i32 %251, 8
  %252 = load i8*, i8** %s2212, align 8
  %arrayidx344 = getelementptr inbounds i8, i8* %252, i64 0
  %253 = load i8, i8* %arrayidx344, align 1
  %conv345 = zext i8 %253 to i32
  %254 = load i32, i32* %check328, align 4
  %sub346 = sub i32 %conv345, %254
  %255 = load i32, i32* %alpha323, align 4
  %mul347 = mul i32 %sub346, %255
  %add348 = add i32 %shl343, %mul347
  %shr349 = lshr i32 %add348, 8
  %conv350 = trunc i32 %shr349 to i8
  %256 = load i8*, i8** %d216, align 8
  %arrayidx351 = getelementptr inbounds i8, i8* %256, i64 0
  store i8 %conv350, i8* %arrayidx351, align 1
  %257 = load i32, i32* %check328, align 4
  %shl352 = shl i32 %257, 8
  %258 = load i8*, i8** %s2212, align 8
  %arrayidx353 = getelementptr inbounds i8, i8* %258, i64 1
  %259 = load i8, i8* %arrayidx353, align 1
  %conv354 = zext i8 %259 to i32
  %260 = load i32, i32* %check328, align 4
  %sub355 = sub i32 %conv354, %260
  %261 = load i32, i32* %alpha323, align 4
  %mul356 = mul i32 %sub355, %261
  %add357 = add i32 %shl352, %mul356
  %shr358 = lshr i32 %add357, 8
  %conv359 = trunc i32 %shr358 to i8
  %262 = load i8*, i8** %d216, align 8
  %arrayidx360 = getelementptr inbounds i8, i8* %262, i64 1
  store i8 %conv359, i8* %arrayidx360, align 1
  %263 = load i32, i32* %check328, align 4
  %shl361 = shl i32 %263, 8
  %264 = load i8*, i8** %s2212, align 8
  %arrayidx362 = getelementptr inbounds i8, i8* %264, i64 2
  %265 = load i8, i8* %arrayidx362, align 1
  %conv363 = zext i8 %265 to i32
  %266 = load i32, i32* %check328, align 4
  %sub364 = sub i32 %conv363, %266
  %267 = load i32, i32* %alpha323, align 4
  %mul365 = mul i32 %sub364, %267
  %add366 = add i32 %shl361, %mul365
  %shr367 = lshr i32 %add366, 8
  %conv368 = trunc i32 %shr367 to i8
  %268 = load i8*, i8** %d216, align 8
  %arrayidx369 = getelementptr inbounds i8, i8* %268, i64 2
  store i8 %conv368, i8* %arrayidx369, align 1
  br label %sw.epilog.370

sw.epilog.370:                                    ; preds = %cond.end.341, %sw.bb.314, %cond.end.308
  br label %sw.epilog.563

sw.default.371:                                   ; preds = %for.body.221
  %269 = load i8*, i8** %s1210, align 8
  %arrayidx373 = getelementptr inbounds i8, i8* %269, i64 3
  %270 = load i8, i8* %arrayidx373, align 1
  %conv374 = zext i8 %270 to i32
  %271 = load i8*, i8** %s2212, align 8
  %arrayidx375 = getelementptr inbounds i8, i8* %271, i64 3
  %272 = load i8, i8* %arrayidx375, align 1
  %conv376 = zext i8 %272 to i32
  %cmp377 = icmp eq i32 %conv374, %conv376
  br i1 %cmp377, label %if.then.379, label %if.else.427

if.then.379:                                      ; preds = %sw.default.371
  %273 = load i8*, i8** %s1210, align 8
  %arrayidx380 = getelementptr inbounds i8, i8* %273, i64 0
  %274 = load i8, i8* %arrayidx380, align 1
  %conv381 = zext i8 %274 to i32
  %shl382 = shl i32 %conv381, 8
  %275 = load i8*, i8** %s2212, align 8
  %arrayidx383 = getelementptr inbounds i8, i8* %275, i64 0
  %276 = load i8, i8* %arrayidx383, align 1
  %conv384 = zext i8 %276 to i32
  %277 = load i8*, i8** %s1210, align 8
  %arrayidx385 = getelementptr inbounds i8, i8* %277, i64 0
  %278 = load i8, i8* %arrayidx385, align 1
  %conv386 = zext i8 %278 to i32
  %sub387 = sub nsw i32 %conv384, %conv386
  %279 = load i8*, i8** %m214, align 8
  %arrayidx388 = getelementptr inbounds i8, i8* %279, i64 0
  %280 = load i8, i8* %arrayidx388, align 1
  %conv389 = zext i8 %280 to i32
  %mul390 = mul nsw i32 %sub387, %conv389
  %add391 = add nsw i32 %shl382, %mul390
  %shr392 = ashr i32 %add391, 8
  %conv393 = trunc i32 %shr392 to i8
  %arrayidx394 = getelementptr inbounds [4 x i8], [4 x i8]* %inter, i32 0, i64 0
  store i8 %conv393, i8* %arrayidx394, align 1
  %281 = load i8*, i8** %s1210, align 8
  %arrayidx395 = getelementptr inbounds i8, i8* %281, i64 1
  %282 = load i8, i8* %arrayidx395, align 1
  %conv396 = zext i8 %282 to i32
  %shl397 = shl i32 %conv396, 8
  %283 = load i8*, i8** %s2212, align 8
  %arrayidx398 = getelementptr inbounds i8, i8* %283, i64 1
  %284 = load i8, i8* %arrayidx398, align 1
  %conv399 = zext i8 %284 to i32
  %285 = load i8*, i8** %s1210, align 8
  %arrayidx400 = getelementptr inbounds i8, i8* %285, i64 1
  %286 = load i8, i8* %arrayidx400, align 1
  %conv401 = zext i8 %286 to i32
  %sub402 = sub nsw i32 %conv399, %conv401
  %287 = load i8*, i8** %m214, align 8
  %arrayidx403 = getelementptr inbounds i8, i8* %287, i64 0
  %288 = load i8, i8* %arrayidx403, align 1
  %conv404 = zext i8 %288 to i32
  %mul405 = mul nsw i32 %sub402, %conv404
  %add406 = add nsw i32 %shl397, %mul405
  %shr407 = ashr i32 %add406, 8
  %conv408 = trunc i32 %shr407 to i8
  %arrayidx409 = getelementptr inbounds [4 x i8], [4 x i8]* %inter, i32 0, i64 1
  store i8 %conv408, i8* %arrayidx409, align 1
  %289 = load i8*, i8** %s1210, align 8
  %arrayidx410 = getelementptr inbounds i8, i8* %289, i64 2
  %290 = load i8, i8* %arrayidx410, align 1
  %conv411 = zext i8 %290 to i32
  %shl412 = shl i32 %conv411, 8
  %291 = load i8*, i8** %s2212, align 8
  %arrayidx413 = getelementptr inbounds i8, i8* %291, i64 2
  %292 = load i8, i8* %arrayidx413, align 1
  %conv414 = zext i8 %292 to i32
  %293 = load i8*, i8** %s1210, align 8
  %arrayidx415 = getelementptr inbounds i8, i8* %293, i64 2
  %294 = load i8, i8* %arrayidx415, align 1
  %conv416 = zext i8 %294 to i32
  %sub417 = sub nsw i32 %conv414, %conv416
  %295 = load i8*, i8** %m214, align 8
  %arrayidx418 = getelementptr inbounds i8, i8* %295, i64 0
  %296 = load i8, i8* %arrayidx418, align 1
  %conv419 = zext i8 %296 to i32
  %mul420 = mul nsw i32 %sub417, %conv419
  %add421 = add nsw i32 %shl412, %mul420
  %shr422 = ashr i32 %add421, 8
  %conv423 = trunc i32 %shr422 to i8
  %arrayidx424 = getelementptr inbounds [4 x i8], [4 x i8]* %inter, i32 0, i64 2
  store i8 %conv423, i8* %arrayidx424, align 1
  %297 = load i8*, i8** %s1210, align 8
  %arrayidx425 = getelementptr inbounds i8, i8* %297, i64 3
  %298 = load i8, i8* %arrayidx425, align 1
  %arrayidx426 = getelementptr inbounds [4 x i8], [4 x i8]* %inter, i32 0, i64 3
  store i8 %298, i8* %arrayidx426, align 1
  br label %if.end.484

if.else.427:                                      ; preds = %sw.default.371
  %299 = load i8*, i8** %s1210, align 8
  %arrayidx428 = getelementptr inbounds i8, i8* %299, i64 3
  %300 = load i8, i8* %arrayidx428, align 1
  %conv429 = zext i8 %300 to i32
  %shl430 = shl i32 %conv429, 8
  %301 = load i8*, i8** %s2212, align 8
  %arrayidx431 = getelementptr inbounds i8, i8* %301, i64 3
  %302 = load i8, i8* %arrayidx431, align 1
  %conv432 = zext i8 %302 to i32
  %303 = load i8*, i8** %s1210, align 8
  %arrayidx433 = getelementptr inbounds i8, i8* %303, i64 3
  %304 = load i8, i8* %arrayidx433, align 1
  %conv434 = zext i8 %304 to i32
  %sub435 = sub nsw i32 %conv432, %conv434
  %305 = load i8*, i8** %m214, align 8
  %arrayidx436 = getelementptr inbounds i8, i8* %305, i64 0
  %306 = load i8, i8* %arrayidx436, align 1
  %conv437 = zext i8 %306 to i32
  %mul438 = mul nsw i32 %sub435, %conv437
  %add439 = add nsw i32 %shl430, %mul438
  %shr440 = ashr i32 %add439, 8
  %conv441 = trunc i32 %shr440 to i8
  %arrayidx442 = getelementptr inbounds [4 x i8], [4 x i8]* %inter, i32 0, i64 3
  store i8 %conv441, i8* %arrayidx442, align 1
  %arrayidx443 = getelementptr inbounds [4 x i8], [4 x i8]* %inter, i32 0, i64 3
  %307 = load i8, i8* %arrayidx443, align 1
  %tobool444 = icmp ne i8 %307, 0
  br i1 %tobool444, label %if.then.445, label %if.end.483

if.then.445:                                      ; preds = %if.else.427
  store i32 0, i32* %i, align 4
  br label %for.cond.446

for.cond.446:                                     ; preds = %for.inc.480, %if.then.445
  %308 = load i32, i32* %i, align 4
  %cmp447 = icmp slt i32 %308, 3
  br i1 %cmp447, label %for.body.449, label %for.end.482

for.body.449:                                     ; preds = %for.cond.446
  %309 = load i32, i32* %i, align 4
  %idxprom = sext i32 %309 to i64
  %310 = load i8*, i8** %s1210, align 8
  %arrayidx451 = getelementptr inbounds i8, i8* %310, i64 %idxprom
  %311 = load i8, i8* %arrayidx451, align 1
  %conv452 = zext i8 %311 to i32
  %312 = load i8*, i8** %s1210, align 8
  %arrayidx453 = getelementptr inbounds i8, i8* %312, i64 3
  %313 = load i8, i8* %arrayidx453, align 1
  %conv454 = zext i8 %313 to i32
  %mul455 = mul nsw i32 %conv452, %conv454
  %conv456 = trunc i32 %mul455 to i16
  store i16 %conv456, i16* %a, align 2
  %314 = load i32, i32* %i, align 4
  %idxprom458 = sext i32 %314 to i64
  %315 = load i8*, i8** %s2212, align 8
  %arrayidx459 = getelementptr inbounds i8, i8* %315, i64 %idxprom458
  %316 = load i8, i8* %arrayidx459, align 1
  %conv460 = zext i8 %316 to i32
  %317 = load i8*, i8** %s2212, align 8
  %arrayidx461 = getelementptr inbounds i8, i8* %317, i64 3
  %318 = load i8, i8* %arrayidx461, align 1
  %conv462 = zext i8 %318 to i32
  %mul463 = mul nsw i32 %conv460, %conv462
  %conv464 = trunc i32 %mul463 to i16
  store i16 %conv464, i16* %b, align 2
  %319 = load i16, i16* %a, align 2
  %conv465 = zext i16 %319 to i32
  %shl466 = shl i32 %conv465, 8
  %320 = load i16, i16* %b, align 2
  %conv467 = zext i16 %320 to i32
  %321 = load i16, i16* %a, align 2
  %conv468 = zext i16 %321 to i32
  %sub469 = sub nsw i32 %conv467, %conv468
  %322 = load i8*, i8** %m214, align 8
  %arrayidx470 = getelementptr inbounds i8, i8* %322, i64 0
  %323 = load i8, i8* %arrayidx470, align 1
  %conv471 = zext i8 %323 to i32
  %mul472 = mul nsw i32 %sub469, %conv471
  %add473 = add nsw i32 %shl466, %mul472
  %shr474 = ashr i32 %add473, 8
  %arrayidx475 = getelementptr inbounds [4 x i8], [4 x i8]* %inter, i32 0, i64 3
  %324 = load i8, i8* %arrayidx475, align 1
  %conv476 = zext i8 %324 to i32
  %div = sdiv i32 %shr474, %conv476
  %conv477 = trunc i32 %div to i8
  %325 = load i32, i32* %i, align 4
  %idxprom478 = sext i32 %325 to i64
  %arrayidx479 = getelementptr inbounds [4 x i8], [4 x i8]* %inter, i32 0, i64 %idxprom478
  store i8 %conv477, i8* %arrayidx479, align 1
  br label %for.inc.480

for.inc.480:                                      ; preds = %for.body.449
  %326 = load i32, i32* %i, align 4
  %inc481 = add nsw i32 %326, 1
  store i32 %inc481, i32* %i, align 4
  br label %for.cond.446

for.end.482:                                      ; preds = %for.cond.446
  br label %if.end.483

if.end.483:                                       ; preds = %for.end.482, %if.else.427
  br label %if.end.484

if.end.484:                                       ; preds = %if.end.483, %if.then.379
  %arrayidx485 = getelementptr inbounds [4 x i8], [4 x i8]* %inter, i32 0, i64 3
  %327 = load i8, i8* %arrayidx485, align 1
  %conv486 = zext i8 %327 to i32
  switch i32 %conv486, label %sw.default.513 [
    i32 0, label %sw.bb.487
    i32 255, label %sw.bb.506
  ]

sw.bb.487:                                        ; preds = %if.end.484
  %328 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_y488 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %328, i32 0, i32 7
  %329 = load i32, i32* %offset_y488, align 4
  %330 = load i32, i32* %row, align 4
  %add489 = add nsw i32 %329, %330
  %331 = load i32, i32* %size, align 4
  %and490 = and i32 %add489, %331
  %332 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_x491 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %332, i32 0, i32 6
  %333 = load i32, i32* %offset_x491, align 4
  %334 = load i32, i32* %col, align 4
  %add492 = add nsw i32 %333, %334
  %335 = load i32, i32* %size, align 4
  %and493 = and i32 %add492, %335
  %xor494 = xor i32 %and490, %and493
  %tobool495 = icmp ne i32 %xor494, 0
  br i1 %tobool495, label %cond.true.496, label %cond.false.498

cond.true.496:                                    ; preds = %sw.bb.487
  %336 = load i8, i8* %dark, align 1
  %conv497 = zext i8 %336 to i32
  br label %cond.end.500

cond.false.498:                                   ; preds = %sw.bb.487
  %337 = load i8, i8* %light, align 1
  %conv499 = zext i8 %337 to i32
  br label %cond.end.500

cond.end.500:                                     ; preds = %cond.false.498, %cond.true.496
  %cond501 = phi i32 [ %conv497, %cond.true.496 ], [ %conv499, %cond.false.498 ]
  %conv502 = trunc i32 %cond501 to i8
  %338 = load i8*, i8** %d216, align 8
  %arrayidx503 = getelementptr inbounds i8, i8* %338, i64 2
  store i8 %conv502, i8* %arrayidx503, align 1
  %339 = load i8*, i8** %d216, align 8
  %arrayidx504 = getelementptr inbounds i8, i8* %339, i64 1
  store i8 %conv502, i8* %arrayidx504, align 1
  %340 = load i8*, i8** %d216, align 8
  %arrayidx505 = getelementptr inbounds i8, i8* %340, i64 0
  store i8 %conv502, i8* %arrayidx505, align 1
  br label %sw.epilog.562

sw.bb.506:                                        ; preds = %if.end.484
  %arrayidx507 = getelementptr inbounds [4 x i8], [4 x i8]* %inter, i32 0, i64 0
  %341 = load i8, i8* %arrayidx507, align 1
  %342 = load i8*, i8** %d216, align 8
  %arrayidx508 = getelementptr inbounds i8, i8* %342, i64 0
  store i8 %341, i8* %arrayidx508, align 1
  %arrayidx509 = getelementptr inbounds [4 x i8], [4 x i8]* %inter, i32 0, i64 1
  %343 = load i8, i8* %arrayidx509, align 1
  %344 = load i8*, i8** %d216, align 8
  %arrayidx510 = getelementptr inbounds i8, i8* %344, i64 1
  store i8 %343, i8* %arrayidx510, align 1
  %arrayidx511 = getelementptr inbounds [4 x i8], [4 x i8]* %inter, i32 0, i64 2
  %345 = load i8, i8* %arrayidx511, align 1
  %346 = load i8*, i8** %d216, align 8
  %arrayidx512 = getelementptr inbounds i8, i8* %346, i64 2
  store i8 %345, i8* %arrayidx512, align 1
  br label %sw.epilog.562

sw.default.513:                                   ; preds = %if.end.484
  %arrayidx516 = getelementptr inbounds [4 x i8], [4 x i8]* %inter, i32 0, i64 3
  %347 = load i8, i8* %arrayidx516, align 1
  %conv517 = zext i8 %347 to i32
  %add518 = add nsw i32 %conv517, 1
  store i32 %add518, i32* %alpha515, align 4
  %348 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_y521 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %348, i32 0, i32 7
  %349 = load i32, i32* %offset_y521, align 4
  %350 = load i32, i32* %row, align 4
  %add522 = add nsw i32 %349, %350
  %351 = load i32, i32* %size, align 4
  %and523 = and i32 %add522, %351
  %352 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_x524 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %352, i32 0, i32 6
  %353 = load i32, i32* %offset_x524, align 4
  %354 = load i32, i32* %col, align 4
  %add525 = add nsw i32 %353, %354
  %355 = load i32, i32* %size, align 4
  %and526 = and i32 %add525, %355
  %xor527 = xor i32 %and523, %and526
  %tobool528 = icmp ne i32 %xor527, 0
  br i1 %tobool528, label %cond.true.529, label %cond.false.531

cond.true.529:                                    ; preds = %sw.default.513
  %356 = load i8, i8* %dark, align 1
  %conv530 = zext i8 %356 to i32
  br label %cond.end.533

cond.false.531:                                   ; preds = %sw.default.513
  %357 = load i8, i8* %light, align 1
  %conv532 = zext i8 %357 to i32
  br label %cond.end.533

cond.end.533:                                     ; preds = %cond.false.531, %cond.true.529
  %cond534 = phi i32 [ %conv530, %cond.true.529 ], [ %conv532, %cond.false.531 ]
  store i32 %cond534, i32* %check520, align 4
  %358 = load i32, i32* %check520, align 4
  %shl535 = shl i32 %358, 8
  %arrayidx536 = getelementptr inbounds [4 x i8], [4 x i8]* %inter, i32 0, i64 0
  %359 = load i8, i8* %arrayidx536, align 1
  %conv537 = zext i8 %359 to i32
  %360 = load i32, i32* %check520, align 4
  %sub538 = sub i32 %conv537, %360
  %361 = load i32, i32* %alpha515, align 4
  %mul539 = mul i32 %sub538, %361
  %add540 = add i32 %shl535, %mul539
  %shr541 = lshr i32 %add540, 8
  %conv542 = trunc i32 %shr541 to i8
  %362 = load i8*, i8** %d216, align 8
  %arrayidx543 = getelementptr inbounds i8, i8* %362, i64 0
  store i8 %conv542, i8* %arrayidx543, align 1
  %363 = load i32, i32* %check520, align 4
  %shl544 = shl i32 %363, 8
  %arrayidx545 = getelementptr inbounds [4 x i8], [4 x i8]* %inter, i32 0, i64 1
  %364 = load i8, i8* %arrayidx545, align 1
  %conv546 = zext i8 %364 to i32
  %365 = load i32, i32* %check520, align 4
  %sub547 = sub i32 %conv546, %365
  %366 = load i32, i32* %alpha515, align 4
  %mul548 = mul i32 %sub547, %366
  %add549 = add i32 %shl544, %mul548
  %shr550 = lshr i32 %add549, 8
  %conv551 = trunc i32 %shr550 to i8
  %367 = load i8*, i8** %d216, align 8
  %arrayidx552 = getelementptr inbounds i8, i8* %367, i64 1
  store i8 %conv551, i8* %arrayidx552, align 1
  %368 = load i32, i32* %check520, align 4
  %shl553 = shl i32 %368, 8
  %arrayidx554 = getelementptr inbounds [4 x i8], [4 x i8]* %inter, i32 0, i64 2
  %369 = load i8, i8* %arrayidx554, align 1
  %conv555 = zext i8 %369 to i32
  %370 = load i32, i32* %check520, align 4
  %sub556 = sub i32 %conv555, %370
  %371 = load i32, i32* %alpha515, align 4
  %mul557 = mul i32 %sub556, %371
  %add558 = add i32 %shl553, %mul557
  %shr559 = lshr i32 %add558, 8
  %conv560 = trunc i32 %shr559 to i8
  %372 = load i8*, i8** %d216, align 8
  %arrayidx561 = getelementptr inbounds i8, i8* %372, i64 2
  store i8 %conv560, i8* %arrayidx561, align 1
  br label %sw.epilog.562

sw.epilog.562:                                    ; preds = %cond.end.533, %sw.bb.506, %cond.end.500
  br label %sw.epilog.563

sw.epilog.563:                                    ; preds = %sw.epilog.562, %sw.epilog.370, %sw.epilog
  br label %for.inc.564

for.inc.564:                                      ; preds = %sw.epilog.563
  %373 = load i32, i32* %col, align 4
  %inc565 = add nsw i32 %373, 1
  store i32 %inc565, i32* %col, align 4
  %374 = load i8*, i8** %s1210, align 8
  %add.ptr566 = getelementptr inbounds i8, i8* %374, i64 4
  store i8* %add.ptr566, i8** %s1210, align 8
  %375 = load i8*, i8** %s2212, align 8
  %add.ptr567 = getelementptr inbounds i8, i8* %375, i64 4
  store i8* %add.ptr567, i8** %s2212, align 8
  %376 = load i8*, i8** %m214, align 8
  %incdec.ptr568 = getelementptr inbounds i8, i8* %376, i32 1
  store i8* %incdec.ptr568, i8** %m214, align 8
  %377 = load i8*, i8** %d216, align 8
  %add.ptr569 = getelementptr inbounds i8, i8* %377, i64 3
  store i8* %add.ptr569, i8** %d216, align 8
  br label %for.cond.217

for.end.570:                                      ; preds = %for.cond.217
  %378 = load i32, i32* %rowstride1.addr, align 4
  %379 = load i8*, i8** %src1, align 8
  %idx.ext571 = sext i32 %378 to i64
  %add.ptr572 = getelementptr inbounds i8, i8* %379, i64 %idx.ext571
  store i8* %add.ptr572, i8** %src1, align 8
  %380 = load i32, i32* %rowstride2.addr, align 4
  %381 = load i8*, i8** %src2, align 8
  %idx.ext573 = sext i32 %380 to i64
  %add.ptr574 = getelementptr inbounds i8, i8* %381, i64 %idx.ext573
  store i8* %add.ptr574, i8** %src2, align 8
  %382 = load i32, i32* %rowstride_mask.addr, align 4
  %383 = load i8*, i8** %src_mask, align 8
  %idx.ext575 = sext i32 %382 to i64
  %add.ptr576 = getelementptr inbounds i8, i8* %383, i64 %idx.ext575
  store i8* %add.ptr576, i8** %src_mask, align 8
  %384 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %rowstride577 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %384, i32 0, i32 5
  %385 = load i32, i32* %rowstride577, align 4
  %386 = load i8*, i8** %dest, align 8
  %idx.ext578 = sext i32 %385 to i64
  %add.ptr579 = getelementptr inbounds i8, i8* %386, i64 %idx.ext578
  store i8* %add.ptr579, i8** %dest, align 8
  br label %for.inc.580

for.inc.580:                                      ; preds = %for.end.570
  %387 = load i32, i32* %row, align 4
  %inc581 = add nsw i32 %387, 1
  store i32 %inc581, i32* %row, align 4
  br label %for.cond.204

for.end.582:                                      ; preds = %for.cond.204
  br label %sw.epilog.1460

sw.bb.583:                                        ; preds = %if.end.124
  store i32 0, i32* %row, align 4
  br label %for.cond.584

for.cond.584:                                     ; preds = %for.inc.633, %sw.bb.583
  %388 = load i32, i32* %row, align 4
  %389 = load i32, i32* %height.addr, align 4
  %cmp585 = icmp slt i32 %388, %389
  br i1 %cmp585, label %for.body.587, label %for.end.635

for.body.587:                                     ; preds = %for.cond.584
  %390 = load i8*, i8** %src1, align 8
  store i8* %390, i8** %s1589, align 8
  %391 = load i8*, i8** %src2, align 8
  store i8* %391, i8** %s2591, align 8
  %392 = load i8*, i8** %src_mask, align 8
  store i8* %392, i8** %m593, align 8
  %393 = load i8*, i8** %dest, align 8
  store i8* %393, i8** %d595, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond.596

for.cond.596:                                     ; preds = %for.inc.617, %for.body.587
  %394 = load i32, i32* %col, align 4
  %395 = load i32, i32* %width.addr, align 4
  %cmp597 = icmp slt i32 %394, %395
  br i1 %cmp597, label %for.body.599, label %for.end.623

for.body.599:                                     ; preds = %for.cond.596
  %396 = load i8*, i8** %s1589, align 8
  %arrayidx600 = getelementptr inbounds i8, i8* %396, i64 0
  %397 = load i8, i8* %arrayidx600, align 1
  %conv601 = zext i8 %397 to i32
  %shl602 = shl i32 %conv601, 8
  %398 = load i8*, i8** %s2591, align 8
  %arrayidx603 = getelementptr inbounds i8, i8* %398, i64 0
  %399 = load i8, i8* %arrayidx603, align 1
  %conv604 = zext i8 %399 to i32
  %400 = load i8*, i8** %s1589, align 8
  %arrayidx605 = getelementptr inbounds i8, i8* %400, i64 0
  %401 = load i8, i8* %arrayidx605, align 1
  %conv606 = zext i8 %401 to i32
  %sub607 = sub nsw i32 %conv604, %conv606
  %402 = load i8*, i8** %m593, align 8
  %arrayidx608 = getelementptr inbounds i8, i8* %402, i64 0
  %403 = load i8, i8* %arrayidx608, align 1
  %conv609 = zext i8 %403 to i32
  %mul610 = mul nsw i32 %sub607, %conv609
  %add611 = add nsw i32 %shl602, %mul610
  %shr612 = ashr i32 %add611, 8
  %conv613 = trunc i32 %shr612 to i8
  %404 = load i8*, i8** %d595, align 8
  %arrayidx614 = getelementptr inbounds i8, i8* %404, i64 2
  store i8 %conv613, i8* %arrayidx614, align 1
  %405 = load i8*, i8** %d595, align 8
  %arrayidx615 = getelementptr inbounds i8, i8* %405, i64 1
  store i8 %conv613, i8* %arrayidx615, align 1
  %406 = load i8*, i8** %d595, align 8
  %arrayidx616 = getelementptr inbounds i8, i8* %406, i64 0
  store i8 %conv613, i8* %arrayidx616, align 1
  br label %for.inc.617

for.inc.617:                                      ; preds = %for.body.599
  %407 = load i32, i32* %col, align 4
  %inc618 = add nsw i32 %407, 1
  store i32 %inc618, i32* %col, align 4
  %408 = load i8*, i8** %s1589, align 8
  %incdec.ptr619 = getelementptr inbounds i8, i8* %408, i32 1
  store i8* %incdec.ptr619, i8** %s1589, align 8
  %409 = load i8*, i8** %s2591, align 8
  %incdec.ptr620 = getelementptr inbounds i8, i8* %409, i32 1
  store i8* %incdec.ptr620, i8** %s2591, align 8
  %410 = load i8*, i8** %m593, align 8
  %incdec.ptr621 = getelementptr inbounds i8, i8* %410, i32 1
  store i8* %incdec.ptr621, i8** %m593, align 8
  %411 = load i8*, i8** %d595, align 8
  %add.ptr622 = getelementptr inbounds i8, i8* %411, i64 3
  store i8* %add.ptr622, i8** %d595, align 8
  br label %for.cond.596

for.end.623:                                      ; preds = %for.cond.596
  %412 = load i32, i32* %rowstride1.addr, align 4
  %413 = load i8*, i8** %src1, align 8
  %idx.ext624 = sext i32 %412 to i64
  %add.ptr625 = getelementptr inbounds i8, i8* %413, i64 %idx.ext624
  store i8* %add.ptr625, i8** %src1, align 8
  %414 = load i32, i32* %rowstride2.addr, align 4
  %415 = load i8*, i8** %src2, align 8
  %idx.ext626 = sext i32 %414 to i64
  %add.ptr627 = getelementptr inbounds i8, i8* %415, i64 %idx.ext626
  store i8* %add.ptr627, i8** %src2, align 8
  %416 = load i32, i32* %rowstride_mask.addr, align 4
  %417 = load i8*, i8** %src_mask, align 8
  %idx.ext628 = sext i32 %416 to i64
  %add.ptr629 = getelementptr inbounds i8, i8* %417, i64 %idx.ext628
  store i8* %add.ptr629, i8** %src_mask, align 8
  %418 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %rowstride630 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %418, i32 0, i32 5
  %419 = load i32, i32* %rowstride630, align 4
  %420 = load i8*, i8** %dest, align 8
  %idx.ext631 = sext i32 %419 to i64
  %add.ptr632 = getelementptr inbounds i8, i8* %420, i64 %idx.ext631
  store i8* %add.ptr632, i8** %dest, align 8
  br label %for.inc.633

for.inc.633:                                      ; preds = %for.end.623
  %421 = load i32, i32* %row, align 4
  %inc634 = add nsw i32 %421, 1
  store i32 %inc634, i32* %row, align 4
  br label %for.cond.584

for.end.635:                                      ; preds = %for.cond.584
  br label %sw.epilog.1460

sw.bb.636:                                        ; preds = %if.end.124
  %422 = load i32, i32* %y.addr, align 4
  store i32 %422, i32* %row, align 4
  br label %for.cond.637

for.cond.637:                                     ; preds = %for.inc.935, %sw.bb.636
  %423 = load i32, i32* %row, align 4
  %424 = load i32, i32* %y.addr, align 4
  %425 = load i32, i32* %height.addr, align 4
  %add638 = add nsw i32 %424, %425
  %cmp639 = icmp slt i32 %423, %add638
  br i1 %cmp639, label %for.body.641, label %for.end.937

for.body.641:                                     ; preds = %for.cond.637
  %426 = load i8*, i8** %src1, align 8
  store i8* %426, i8** %s1643, align 8
  %427 = load i8*, i8** %src2, align 8
  store i8* %427, i8** %s2645, align 8
  %428 = load i8*, i8** %src_mask, align 8
  store i8* %428, i8** %m647, align 8
  %429 = load i8*, i8** %dest, align 8
  store i8* %429, i8** %d649, align 8
  %430 = load i32, i32* %x.addr, align 4
  store i32 %430, i32* %col, align 4
  br label %for.cond.650

for.cond.650:                                     ; preds = %for.inc.919, %for.body.641
  %431 = load i32, i32* %col, align 4
  %432 = load i32, i32* %x.addr, align 4
  %433 = load i32, i32* %width.addr, align 4
  %add651 = add nsw i32 %432, %433
  %cmp652 = icmp slt i32 %431, %add651
  br i1 %cmp652, label %for.body.654, label %for.end.925

for.body.654:                                     ; preds = %for.cond.650
  %434 = load i8*, i8** %m647, align 8
  %arrayidx655 = getelementptr inbounds i8, i8* %434, i64 0
  %435 = load i8, i8* %arrayidx655, align 1
  %conv656 = zext i8 %435 to i32
  switch i32 %conv656, label %sw.default.779 [
    i32 0, label %sw.bb.657
    i32 255, label %sw.bb.718
  ]

sw.bb.657:                                        ; preds = %for.body.654
  %436 = load i8*, i8** %s1643, align 8
  %arrayidx658 = getelementptr inbounds i8, i8* %436, i64 1
  %437 = load i8, i8* %arrayidx658, align 1
  %conv659 = zext i8 %437 to i32
  switch i32 %conv659, label %sw.default.684 [
    i32 0, label %sw.bb.660
    i32 255, label %sw.bb.679
  ]

sw.bb.660:                                        ; preds = %sw.bb.657
  %438 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_y661 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %438, i32 0, i32 7
  %439 = load i32, i32* %offset_y661, align 4
  %440 = load i32, i32* %row, align 4
  %add662 = add nsw i32 %439, %440
  %441 = load i32, i32* %size, align 4
  %and663 = and i32 %add662, %441
  %442 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_x664 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %442, i32 0, i32 6
  %443 = load i32, i32* %offset_x664, align 4
  %444 = load i32, i32* %col, align 4
  %add665 = add nsw i32 %443, %444
  %445 = load i32, i32* %size, align 4
  %and666 = and i32 %add665, %445
  %xor667 = xor i32 %and663, %and666
  %tobool668 = icmp ne i32 %xor667, 0
  br i1 %tobool668, label %cond.true.669, label %cond.false.671

cond.true.669:                                    ; preds = %sw.bb.660
  %446 = load i8, i8* %dark, align 1
  %conv670 = zext i8 %446 to i32
  br label %cond.end.673

cond.false.671:                                   ; preds = %sw.bb.660
  %447 = load i8, i8* %light, align 1
  %conv672 = zext i8 %447 to i32
  br label %cond.end.673

cond.end.673:                                     ; preds = %cond.false.671, %cond.true.669
  %cond674 = phi i32 [ %conv670, %cond.true.669 ], [ %conv672, %cond.false.671 ]
  %conv675 = trunc i32 %cond674 to i8
  %448 = load i8*, i8** %d649, align 8
  %arrayidx676 = getelementptr inbounds i8, i8* %448, i64 2
  store i8 %conv675, i8* %arrayidx676, align 1
  %449 = load i8*, i8** %d649, align 8
  %arrayidx677 = getelementptr inbounds i8, i8* %449, i64 1
  store i8 %conv675, i8* %arrayidx677, align 1
  %450 = load i8*, i8** %d649, align 8
  %arrayidx678 = getelementptr inbounds i8, i8* %450, i64 0
  store i8 %conv675, i8* %arrayidx678, align 1
  br label %sw.epilog.717

sw.bb.679:                                        ; preds = %sw.bb.657
  %451 = load i8*, i8** %s1643, align 8
  %arrayidx680 = getelementptr inbounds i8, i8* %451, i64 0
  %452 = load i8, i8* %arrayidx680, align 1
  %453 = load i8*, i8** %d649, align 8
  %arrayidx681 = getelementptr inbounds i8, i8* %453, i64 2
  store i8 %452, i8* %arrayidx681, align 1
  %454 = load i8*, i8** %d649, align 8
  %arrayidx682 = getelementptr inbounds i8, i8* %454, i64 1
  store i8 %452, i8* %arrayidx682, align 1
  %455 = load i8*, i8** %d649, align 8
  %arrayidx683 = getelementptr inbounds i8, i8* %455, i64 0
  store i8 %452, i8* %arrayidx683, align 1
  br label %sw.epilog.717

sw.default.684:                                   ; preds = %sw.bb.657
  %456 = load i8*, i8** %s1643, align 8
  %arrayidx687 = getelementptr inbounds i8, i8* %456, i64 1
  %457 = load i8, i8* %arrayidx687, align 1
  %conv688 = zext i8 %457 to i32
  %add689 = add nsw i32 %conv688, 1
  store i32 %add689, i32* %alpha686, align 4
  %458 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_y692 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %458, i32 0, i32 7
  %459 = load i32, i32* %offset_y692, align 4
  %460 = load i32, i32* %row, align 4
  %add693 = add nsw i32 %459, %460
  %461 = load i32, i32* %size, align 4
  %and694 = and i32 %add693, %461
  %462 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_x695 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %462, i32 0, i32 6
  %463 = load i32, i32* %offset_x695, align 4
  %464 = load i32, i32* %col, align 4
  %add696 = add nsw i32 %463, %464
  %465 = load i32, i32* %size, align 4
  %and697 = and i32 %add696, %465
  %xor698 = xor i32 %and694, %and697
  %tobool699 = icmp ne i32 %xor698, 0
  br i1 %tobool699, label %cond.true.700, label %cond.false.702

cond.true.700:                                    ; preds = %sw.default.684
  %466 = load i8, i8* %dark, align 1
  %conv701 = zext i8 %466 to i32
  br label %cond.end.704

cond.false.702:                                   ; preds = %sw.default.684
  %467 = load i8, i8* %light, align 1
  %conv703 = zext i8 %467 to i32
  br label %cond.end.704

cond.end.704:                                     ; preds = %cond.false.702, %cond.true.700
  %cond705 = phi i32 [ %conv701, %cond.true.700 ], [ %conv703, %cond.false.702 ]
  store i32 %cond705, i32* %check691, align 4
  %468 = load i32, i32* %check691, align 4
  %shl706 = shl i32 %468, 8
  %469 = load i8*, i8** %s1643, align 8
  %arrayidx707 = getelementptr inbounds i8, i8* %469, i64 0
  %470 = load i8, i8* %arrayidx707, align 1
  %conv708 = zext i8 %470 to i32
  %471 = load i32, i32* %check691, align 4
  %sub709 = sub i32 %conv708, %471
  %472 = load i32, i32* %alpha686, align 4
  %mul710 = mul i32 %sub709, %472
  %add711 = add i32 %shl706, %mul710
  %shr712 = lshr i32 %add711, 8
  %conv713 = trunc i32 %shr712 to i8
  %473 = load i8*, i8** %d649, align 8
  %arrayidx714 = getelementptr inbounds i8, i8* %473, i64 2
  store i8 %conv713, i8* %arrayidx714, align 1
  %474 = load i8*, i8** %d649, align 8
  %arrayidx715 = getelementptr inbounds i8, i8* %474, i64 1
  store i8 %conv713, i8* %arrayidx715, align 1
  %475 = load i8*, i8** %d649, align 8
  %arrayidx716 = getelementptr inbounds i8, i8* %475, i64 0
  store i8 %conv713, i8* %arrayidx716, align 1
  br label %sw.epilog.717

sw.epilog.717:                                    ; preds = %cond.end.704, %sw.bb.679, %cond.end.673
  br label %sw.epilog.918

sw.bb.718:                                        ; preds = %for.body.654
  %476 = load i8*, i8** %s2645, align 8
  %arrayidx719 = getelementptr inbounds i8, i8* %476, i64 1
  %477 = load i8, i8* %arrayidx719, align 1
  %conv720 = zext i8 %477 to i32
  switch i32 %conv720, label %sw.default.745 [
    i32 0, label %sw.bb.721
    i32 255, label %sw.bb.740
  ]

sw.bb.721:                                        ; preds = %sw.bb.718
  %478 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_y722 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %478, i32 0, i32 7
  %479 = load i32, i32* %offset_y722, align 4
  %480 = load i32, i32* %row, align 4
  %add723 = add nsw i32 %479, %480
  %481 = load i32, i32* %size, align 4
  %and724 = and i32 %add723, %481
  %482 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_x725 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %482, i32 0, i32 6
  %483 = load i32, i32* %offset_x725, align 4
  %484 = load i32, i32* %col, align 4
  %add726 = add nsw i32 %483, %484
  %485 = load i32, i32* %size, align 4
  %and727 = and i32 %add726, %485
  %xor728 = xor i32 %and724, %and727
  %tobool729 = icmp ne i32 %xor728, 0
  br i1 %tobool729, label %cond.true.730, label %cond.false.732

cond.true.730:                                    ; preds = %sw.bb.721
  %486 = load i8, i8* %dark, align 1
  %conv731 = zext i8 %486 to i32
  br label %cond.end.734

cond.false.732:                                   ; preds = %sw.bb.721
  %487 = load i8, i8* %light, align 1
  %conv733 = zext i8 %487 to i32
  br label %cond.end.734

cond.end.734:                                     ; preds = %cond.false.732, %cond.true.730
  %cond735 = phi i32 [ %conv731, %cond.true.730 ], [ %conv733, %cond.false.732 ]
  %conv736 = trunc i32 %cond735 to i8
  %488 = load i8*, i8** %d649, align 8
  %arrayidx737 = getelementptr inbounds i8, i8* %488, i64 2
  store i8 %conv736, i8* %arrayidx737, align 1
  %489 = load i8*, i8** %d649, align 8
  %arrayidx738 = getelementptr inbounds i8, i8* %489, i64 1
  store i8 %conv736, i8* %arrayidx738, align 1
  %490 = load i8*, i8** %d649, align 8
  %arrayidx739 = getelementptr inbounds i8, i8* %490, i64 0
  store i8 %conv736, i8* %arrayidx739, align 1
  br label %sw.epilog.778

sw.bb.740:                                        ; preds = %sw.bb.718
  %491 = load i8*, i8** %s2645, align 8
  %arrayidx741 = getelementptr inbounds i8, i8* %491, i64 0
  %492 = load i8, i8* %arrayidx741, align 1
  %493 = load i8*, i8** %d649, align 8
  %arrayidx742 = getelementptr inbounds i8, i8* %493, i64 2
  store i8 %492, i8* %arrayidx742, align 1
  %494 = load i8*, i8** %d649, align 8
  %arrayidx743 = getelementptr inbounds i8, i8* %494, i64 1
  store i8 %492, i8* %arrayidx743, align 1
  %495 = load i8*, i8** %d649, align 8
  %arrayidx744 = getelementptr inbounds i8, i8* %495, i64 0
  store i8 %492, i8* %arrayidx744, align 1
  br label %sw.epilog.778

sw.default.745:                                   ; preds = %sw.bb.718
  %496 = load i8*, i8** %s2645, align 8
  %arrayidx748 = getelementptr inbounds i8, i8* %496, i64 1
  %497 = load i8, i8* %arrayidx748, align 1
  %conv749 = zext i8 %497 to i32
  %add750 = add nsw i32 %conv749, 1
  store i32 %add750, i32* %alpha747, align 4
  %498 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_y753 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %498, i32 0, i32 7
  %499 = load i32, i32* %offset_y753, align 4
  %500 = load i32, i32* %row, align 4
  %add754 = add nsw i32 %499, %500
  %501 = load i32, i32* %size, align 4
  %and755 = and i32 %add754, %501
  %502 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_x756 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %502, i32 0, i32 6
  %503 = load i32, i32* %offset_x756, align 4
  %504 = load i32, i32* %col, align 4
  %add757 = add nsw i32 %503, %504
  %505 = load i32, i32* %size, align 4
  %and758 = and i32 %add757, %505
  %xor759 = xor i32 %and755, %and758
  %tobool760 = icmp ne i32 %xor759, 0
  br i1 %tobool760, label %cond.true.761, label %cond.false.763

cond.true.761:                                    ; preds = %sw.default.745
  %506 = load i8, i8* %dark, align 1
  %conv762 = zext i8 %506 to i32
  br label %cond.end.765

cond.false.763:                                   ; preds = %sw.default.745
  %507 = load i8, i8* %light, align 1
  %conv764 = zext i8 %507 to i32
  br label %cond.end.765

cond.end.765:                                     ; preds = %cond.false.763, %cond.true.761
  %cond766 = phi i32 [ %conv762, %cond.true.761 ], [ %conv764, %cond.false.763 ]
  store i32 %cond766, i32* %check752, align 4
  %508 = load i32, i32* %check752, align 4
  %shl767 = shl i32 %508, 8
  %509 = load i8*, i8** %s2645, align 8
  %arrayidx768 = getelementptr inbounds i8, i8* %509, i64 0
  %510 = load i8, i8* %arrayidx768, align 1
  %conv769 = zext i8 %510 to i32
  %511 = load i32, i32* %check752, align 4
  %sub770 = sub i32 %conv769, %511
  %512 = load i32, i32* %alpha747, align 4
  %mul771 = mul i32 %sub770, %512
  %add772 = add i32 %shl767, %mul771
  %shr773 = lshr i32 %add772, 8
  %conv774 = trunc i32 %shr773 to i8
  %513 = load i8*, i8** %d649, align 8
  %arrayidx775 = getelementptr inbounds i8, i8* %513, i64 2
  store i8 %conv774, i8* %arrayidx775, align 1
  %514 = load i8*, i8** %d649, align 8
  %arrayidx776 = getelementptr inbounds i8, i8* %514, i64 1
  store i8 %conv774, i8* %arrayidx776, align 1
  %515 = load i8*, i8** %d649, align 8
  %arrayidx777 = getelementptr inbounds i8, i8* %515, i64 0
  store i8 %conv774, i8* %arrayidx777, align 1
  br label %sw.epilog.778

sw.epilog.778:                                    ; preds = %cond.end.765, %sw.bb.740, %cond.end.734
  br label %sw.epilog.918

sw.default.779:                                   ; preds = %for.body.654
  %516 = bitcast [2 x i8]* %inter781 to i8*
  call void @llvm.memset.p0i8.i64(i8* %516, i8 0, i64 2, i32 1, i1 false)
  %517 = load i8*, i8** %s1643, align 8
  %arrayidx782 = getelementptr inbounds i8, i8* %517, i64 1
  %518 = load i8, i8* %arrayidx782, align 1
  %conv783 = zext i8 %518 to i32
  %519 = load i8*, i8** %s2645, align 8
  %arrayidx784 = getelementptr inbounds i8, i8* %519, i64 1
  %520 = load i8, i8* %arrayidx784, align 1
  %conv785 = zext i8 %520 to i32
  %cmp786 = icmp eq i32 %conv783, %conv785
  br i1 %cmp786, label %if.then.788, label %if.else.806

if.then.788:                                      ; preds = %sw.default.779
  %521 = load i8*, i8** %s1643, align 8
  %arrayidx789 = getelementptr inbounds i8, i8* %521, i64 0
  %522 = load i8, i8* %arrayidx789, align 1
  %conv790 = zext i8 %522 to i32
  %shl791 = shl i32 %conv790, 8
  %523 = load i8*, i8** %s2645, align 8
  %arrayidx792 = getelementptr inbounds i8, i8* %523, i64 0
  %524 = load i8, i8* %arrayidx792, align 1
  %conv793 = zext i8 %524 to i32
  %525 = load i8*, i8** %s1643, align 8
  %arrayidx794 = getelementptr inbounds i8, i8* %525, i64 0
  %526 = load i8, i8* %arrayidx794, align 1
  %conv795 = zext i8 %526 to i32
  %sub796 = sub nsw i32 %conv793, %conv795
  %527 = load i8*, i8** %m647, align 8
  %arrayidx797 = getelementptr inbounds i8, i8* %527, i64 0
  %528 = load i8, i8* %arrayidx797, align 1
  %conv798 = zext i8 %528 to i32
  %mul799 = mul nsw i32 %sub796, %conv798
  %add800 = add nsw i32 %shl791, %mul799
  %shr801 = ashr i32 %add800, 8
  %conv802 = trunc i32 %shr801 to i8
  %arrayidx803 = getelementptr inbounds [2 x i8], [2 x i8]* %inter781, i32 0, i64 0
  store i8 %conv802, i8* %arrayidx803, align 1
  %529 = load i8*, i8** %s1643, align 8
  %arrayidx804 = getelementptr inbounds i8, i8* %529, i64 1
  %530 = load i8, i8* %arrayidx804, align 1
  %arrayidx805 = getelementptr inbounds [2 x i8], [2 x i8]* %inter781, i32 0, i64 1
  store i8 %530, i8* %arrayidx805, align 1
  br label %if.end.857

if.else.806:                                      ; preds = %sw.default.779
  %531 = load i8*, i8** %s1643, align 8
  %arrayidx807 = getelementptr inbounds i8, i8* %531, i64 1
  %532 = load i8, i8* %arrayidx807, align 1
  %conv808 = zext i8 %532 to i32
  %shl809 = shl i32 %conv808, 8
  %533 = load i8*, i8** %s2645, align 8
  %arrayidx810 = getelementptr inbounds i8, i8* %533, i64 1
  %534 = load i8, i8* %arrayidx810, align 1
  %conv811 = zext i8 %534 to i32
  %535 = load i8*, i8** %s1643, align 8
  %arrayidx812 = getelementptr inbounds i8, i8* %535, i64 1
  %536 = load i8, i8* %arrayidx812, align 1
  %conv813 = zext i8 %536 to i32
  %sub814 = sub nsw i32 %conv811, %conv813
  %537 = load i8*, i8** %m647, align 8
  %arrayidx815 = getelementptr inbounds i8, i8* %537, i64 0
  %538 = load i8, i8* %arrayidx815, align 1
  %conv816 = zext i8 %538 to i32
  %mul817 = mul nsw i32 %sub814, %conv816
  %add818 = add nsw i32 %shl809, %mul817
  %shr819 = ashr i32 %add818, 8
  %conv820 = trunc i32 %shr819 to i8
  %arrayidx821 = getelementptr inbounds [2 x i8], [2 x i8]* %inter781, i32 0, i64 1
  store i8 %conv820, i8* %arrayidx821, align 1
  %arrayidx822 = getelementptr inbounds [2 x i8], [2 x i8]* %inter781, i32 0, i64 1
  %539 = load i8, i8* %arrayidx822, align 1
  %tobool823 = icmp ne i8 %539, 0
  br i1 %tobool823, label %if.then.824, label %if.end.856

if.then.824:                                      ; preds = %if.else.806
  %540 = load i8*, i8** %s1643, align 8
  %arrayidx827 = getelementptr inbounds i8, i8* %540, i64 0
  %541 = load i8, i8* %arrayidx827, align 1
  %conv828 = zext i8 %541 to i32
  %542 = load i8*, i8** %s1643, align 8
  %arrayidx829 = getelementptr inbounds i8, i8* %542, i64 1
  %543 = load i8, i8* %arrayidx829, align 1
  %conv830 = zext i8 %543 to i32
  %mul831 = mul nsw i32 %conv828, %conv830
  %conv832 = trunc i32 %mul831 to i16
  store i16 %conv832, i16* %a826, align 2
  %544 = load i8*, i8** %s2645, align 8
  %arrayidx835 = getelementptr inbounds i8, i8* %544, i64 0
  %545 = load i8, i8* %arrayidx835, align 1
  %conv836 = zext i8 %545 to i32
  %546 = load i8*, i8** %s2645, align 8
  %arrayidx837 = getelementptr inbounds i8, i8* %546, i64 1
  %547 = load i8, i8* %arrayidx837, align 1
  %conv838 = zext i8 %547 to i32
  %mul839 = mul nsw i32 %conv836, %conv838
  %conv840 = trunc i32 %mul839 to i16
  store i16 %conv840, i16* %b834, align 2
  %548 = load i16, i16* %a826, align 2
  %conv841 = zext i16 %548 to i32
  %shl842 = shl i32 %conv841, 8
  %549 = load i16, i16* %b834, align 2
  %conv843 = zext i16 %549 to i32
  %550 = load i16, i16* %a826, align 2
  %conv844 = zext i16 %550 to i32
  %sub845 = sub nsw i32 %conv843, %conv844
  %551 = load i8*, i8** %m647, align 8
  %arrayidx846 = getelementptr inbounds i8, i8* %551, i64 0
  %552 = load i8, i8* %arrayidx846, align 1
  %conv847 = zext i8 %552 to i32
  %mul848 = mul nsw i32 %sub845, %conv847
  %add849 = add nsw i32 %shl842, %mul848
  %shr850 = ashr i32 %add849, 8
  %arrayidx851 = getelementptr inbounds [2 x i8], [2 x i8]* %inter781, i32 0, i64 1
  %553 = load i8, i8* %arrayidx851, align 1
  %conv852 = zext i8 %553 to i32
  %div853 = sdiv i32 %shr850, %conv852
  %conv854 = trunc i32 %div853 to i8
  %arrayidx855 = getelementptr inbounds [2 x i8], [2 x i8]* %inter781, i32 0, i64 0
  store i8 %conv854, i8* %arrayidx855, align 1
  br label %if.end.856

if.end.856:                                       ; preds = %if.then.824, %if.else.806
  br label %if.end.857

if.end.857:                                       ; preds = %if.end.856, %if.then.788
  %arrayidx858 = getelementptr inbounds [2 x i8], [2 x i8]* %inter781, i32 0, i64 1
  %554 = load i8, i8* %arrayidx858, align 1
  %conv859 = zext i8 %554 to i32
  switch i32 %conv859, label %sw.default.884 [
    i32 0, label %sw.bb.860
    i32 255, label %sw.bb.879
  ]

sw.bb.860:                                        ; preds = %if.end.857
  %555 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_y861 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %555, i32 0, i32 7
  %556 = load i32, i32* %offset_y861, align 4
  %557 = load i32, i32* %row, align 4
  %add862 = add nsw i32 %556, %557
  %558 = load i32, i32* %size, align 4
  %and863 = and i32 %add862, %558
  %559 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_x864 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %559, i32 0, i32 6
  %560 = load i32, i32* %offset_x864, align 4
  %561 = load i32, i32* %col, align 4
  %add865 = add nsw i32 %560, %561
  %562 = load i32, i32* %size, align 4
  %and866 = and i32 %add865, %562
  %xor867 = xor i32 %and863, %and866
  %tobool868 = icmp ne i32 %xor867, 0
  br i1 %tobool868, label %cond.true.869, label %cond.false.871

cond.true.869:                                    ; preds = %sw.bb.860
  %563 = load i8, i8* %dark, align 1
  %conv870 = zext i8 %563 to i32
  br label %cond.end.873

cond.false.871:                                   ; preds = %sw.bb.860
  %564 = load i8, i8* %light, align 1
  %conv872 = zext i8 %564 to i32
  br label %cond.end.873

cond.end.873:                                     ; preds = %cond.false.871, %cond.true.869
  %cond874 = phi i32 [ %conv870, %cond.true.869 ], [ %conv872, %cond.false.871 ]
  %conv875 = trunc i32 %cond874 to i8
  %565 = load i8*, i8** %d649, align 8
  %arrayidx876 = getelementptr inbounds i8, i8* %565, i64 2
  store i8 %conv875, i8* %arrayidx876, align 1
  %566 = load i8*, i8** %d649, align 8
  %arrayidx877 = getelementptr inbounds i8, i8* %566, i64 1
  store i8 %conv875, i8* %arrayidx877, align 1
  %567 = load i8*, i8** %d649, align 8
  %arrayidx878 = getelementptr inbounds i8, i8* %567, i64 0
  store i8 %conv875, i8* %arrayidx878, align 1
  br label %sw.epilog.917

sw.bb.879:                                        ; preds = %if.end.857
  %arrayidx880 = getelementptr inbounds [2 x i8], [2 x i8]* %inter781, i32 0, i64 0
  %568 = load i8, i8* %arrayidx880, align 1
  %569 = load i8*, i8** %d649, align 8
  %arrayidx881 = getelementptr inbounds i8, i8* %569, i64 2
  store i8 %568, i8* %arrayidx881, align 1
  %570 = load i8*, i8** %d649, align 8
  %arrayidx882 = getelementptr inbounds i8, i8* %570, i64 1
  store i8 %568, i8* %arrayidx882, align 1
  %571 = load i8*, i8** %d649, align 8
  %arrayidx883 = getelementptr inbounds i8, i8* %571, i64 0
  store i8 %568, i8* %arrayidx883, align 1
  br label %sw.epilog.917

sw.default.884:                                   ; preds = %if.end.857
  %arrayidx887 = getelementptr inbounds [2 x i8], [2 x i8]* %inter781, i32 0, i64 1
  %572 = load i8, i8* %arrayidx887, align 1
  %conv888 = zext i8 %572 to i32
  %add889 = add nsw i32 %conv888, 1
  store i32 %add889, i32* %alpha886, align 4
  %573 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_y892 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %573, i32 0, i32 7
  %574 = load i32, i32* %offset_y892, align 4
  %575 = load i32, i32* %row, align 4
  %add893 = add nsw i32 %574, %575
  %576 = load i32, i32* %size, align 4
  %and894 = and i32 %add893, %576
  %577 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_x895 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %577, i32 0, i32 6
  %578 = load i32, i32* %offset_x895, align 4
  %579 = load i32, i32* %col, align 4
  %add896 = add nsw i32 %578, %579
  %580 = load i32, i32* %size, align 4
  %and897 = and i32 %add896, %580
  %xor898 = xor i32 %and894, %and897
  %tobool899 = icmp ne i32 %xor898, 0
  br i1 %tobool899, label %cond.true.900, label %cond.false.902

cond.true.900:                                    ; preds = %sw.default.884
  %581 = load i8, i8* %dark, align 1
  %conv901 = zext i8 %581 to i32
  br label %cond.end.904

cond.false.902:                                   ; preds = %sw.default.884
  %582 = load i8, i8* %light, align 1
  %conv903 = zext i8 %582 to i32
  br label %cond.end.904

cond.end.904:                                     ; preds = %cond.false.902, %cond.true.900
  %cond905 = phi i32 [ %conv901, %cond.true.900 ], [ %conv903, %cond.false.902 ]
  store i32 %cond905, i32* %check891, align 4
  %583 = load i32, i32* %check891, align 4
  %shl906 = shl i32 %583, 8
  %arrayidx907 = getelementptr inbounds [2 x i8], [2 x i8]* %inter781, i32 0, i64 0
  %584 = load i8, i8* %arrayidx907, align 1
  %conv908 = zext i8 %584 to i32
  %585 = load i32, i32* %check891, align 4
  %sub909 = sub i32 %conv908, %585
  %586 = load i32, i32* %alpha886, align 4
  %mul910 = mul i32 %sub909, %586
  %add911 = add i32 %shl906, %mul910
  %shr912 = lshr i32 %add911, 8
  %conv913 = trunc i32 %shr912 to i8
  %587 = load i8*, i8** %d649, align 8
  %arrayidx914 = getelementptr inbounds i8, i8* %587, i64 2
  store i8 %conv913, i8* %arrayidx914, align 1
  %588 = load i8*, i8** %d649, align 8
  %arrayidx915 = getelementptr inbounds i8, i8* %588, i64 1
  store i8 %conv913, i8* %arrayidx915, align 1
  %589 = load i8*, i8** %d649, align 8
  %arrayidx916 = getelementptr inbounds i8, i8* %589, i64 0
  store i8 %conv913, i8* %arrayidx916, align 1
  br label %sw.epilog.917

sw.epilog.917:                                    ; preds = %cond.end.904, %sw.bb.879, %cond.end.873
  br label %sw.epilog.918

sw.epilog.918:                                    ; preds = %sw.epilog.917, %sw.epilog.778, %sw.epilog.717
  br label %for.inc.919

for.inc.919:                                      ; preds = %sw.epilog.918
  %590 = load i32, i32* %col, align 4
  %inc920 = add nsw i32 %590, 1
  store i32 %inc920, i32* %col, align 4
  %591 = load i8*, i8** %s1643, align 8
  %add.ptr921 = getelementptr inbounds i8, i8* %591, i64 2
  store i8* %add.ptr921, i8** %s1643, align 8
  %592 = load i8*, i8** %s2645, align 8
  %add.ptr922 = getelementptr inbounds i8, i8* %592, i64 2
  store i8* %add.ptr922, i8** %s2645, align 8
  %593 = load i8*, i8** %m647, align 8
  %incdec.ptr923 = getelementptr inbounds i8, i8* %593, i32 1
  store i8* %incdec.ptr923, i8** %m647, align 8
  %594 = load i8*, i8** %d649, align 8
  %add.ptr924 = getelementptr inbounds i8, i8* %594, i64 3
  store i8* %add.ptr924, i8** %d649, align 8
  br label %for.cond.650

for.end.925:                                      ; preds = %for.cond.650
  %595 = load i32, i32* %rowstride1.addr, align 4
  %596 = load i8*, i8** %src1, align 8
  %idx.ext926 = sext i32 %595 to i64
  %add.ptr927 = getelementptr inbounds i8, i8* %596, i64 %idx.ext926
  store i8* %add.ptr927, i8** %src1, align 8
  %597 = load i32, i32* %rowstride2.addr, align 4
  %598 = load i8*, i8** %src2, align 8
  %idx.ext928 = sext i32 %597 to i64
  %add.ptr929 = getelementptr inbounds i8, i8* %598, i64 %idx.ext928
  store i8* %add.ptr929, i8** %src2, align 8
  %599 = load i32, i32* %rowstride_mask.addr, align 4
  %600 = load i8*, i8** %src_mask, align 8
  %idx.ext930 = sext i32 %599 to i64
  %add.ptr931 = getelementptr inbounds i8, i8* %600, i64 %idx.ext930
  store i8* %add.ptr931, i8** %src_mask, align 8
  %601 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %rowstride932 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %601, i32 0, i32 5
  %602 = load i32, i32* %rowstride932, align 4
  %603 = load i8*, i8** %dest, align 8
  %idx.ext933 = sext i32 %602 to i64
  %add.ptr934 = getelementptr inbounds i8, i8* %603, i64 %idx.ext933
  store i8* %add.ptr934, i8** %dest, align 8
  br label %for.inc.935

for.inc.935:                                      ; preds = %for.end.925
  %604 = load i32, i32* %row, align 4
  %inc936 = add nsw i32 %604, 1
  store i32 %inc936, i32* %row, align 4
  br label %for.cond.637

for.end.937:                                      ; preds = %for.cond.637
  br label %sw.epilog.1460

sw.bb.938:                                        ; preds = %if.end.124
  br label %do.body.939

do.body.939:                                      ; preds = %sw.bb.938
  %605 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %colormap = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %605, i32 0, i32 11
  %606 = load i8*, i8** %colormap, align 8
  %cmp940 = icmp ne i8* %606, null
  br i1 %cmp940, label %if.then.942, label %if.else.943

if.then.942:                                      ; preds = %do.body.939
  br label %if.end.944

if.else.943:                                      ; preds = %do.body.939
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_preview_area_mask, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.944:                                       ; preds = %if.then.942
  br label %do.end.945

do.end.945:                                       ; preds = %if.end.944
  store i32 0, i32* %row, align 4
  br label %for.cond.946

for.cond.946:                                     ; preds = %for.inc.1037, %do.end.945
  %607 = load i32, i32* %row, align 4
  %608 = load i32, i32* %height.addr, align 4
  %cmp947 = icmp slt i32 %607, %608
  br i1 %cmp947, label %for.body.949, label %for.end.1039

for.body.949:                                     ; preds = %for.cond.946
  %609 = load i8*, i8** %src1, align 8
  store i8* %609, i8** %s1951, align 8
  %610 = load i8*, i8** %src2, align 8
  store i8* %610, i8** %s2953, align 8
  %611 = load i8*, i8** %src_mask, align 8
  store i8* %611, i8** %m955, align 8
  %612 = load i8*, i8** %dest, align 8
  store i8* %612, i8** %d957, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond.958

for.cond.958:                                     ; preds = %for.inc.1021, %for.body.949
  %613 = load i32, i32* %col, align 4
  %614 = load i32, i32* %width.addr, align 4
  %cmp959 = icmp slt i32 %613, %614
  br i1 %cmp959, label %for.body.961, label %for.end.1027

for.body.961:                                     ; preds = %for.cond.958
  %615 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %colormap963 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %615, i32 0, i32 11
  %616 = load i8*, i8** %colormap963, align 8
  %617 = load i8*, i8** %s1951, align 8
  %arrayidx964 = getelementptr inbounds i8, i8* %617, i64 0
  %618 = load i8, i8* %arrayidx964, align 1
  %conv965 = zext i8 %618 to i32
  %mul966 = mul nsw i32 3, %conv965
  %idx.ext967 = sext i32 %mul966 to i64
  %add.ptr968 = getelementptr inbounds i8, i8* %616, i64 %idx.ext967
  store i8* %add.ptr968, i8** %cmap1, align 8
  %619 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %colormap970 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %619, i32 0, i32 11
  %620 = load i8*, i8** %colormap970, align 8
  %621 = load i8*, i8** %s2953, align 8
  %arrayidx971 = getelementptr inbounds i8, i8* %621, i64 0
  %622 = load i8, i8* %arrayidx971, align 1
  %conv972 = zext i8 %622 to i32
  %mul973 = mul nsw i32 3, %conv972
  %idx.ext974 = sext i32 %mul973 to i64
  %add.ptr975 = getelementptr inbounds i8, i8* %620, i64 %idx.ext974
  store i8* %add.ptr975, i8** %cmap2, align 8
  %623 = load i8*, i8** %cmap1, align 8
  %arrayidx976 = getelementptr inbounds i8, i8* %623, i64 0
  %624 = load i8, i8* %arrayidx976, align 1
  %conv977 = zext i8 %624 to i32
  %shl978 = shl i32 %conv977, 8
  %625 = load i8*, i8** %cmap2, align 8
  %arrayidx979 = getelementptr inbounds i8, i8* %625, i64 0
  %626 = load i8, i8* %arrayidx979, align 1
  %conv980 = zext i8 %626 to i32
  %627 = load i8*, i8** %cmap1, align 8
  %arrayidx981 = getelementptr inbounds i8, i8* %627, i64 0
  %628 = load i8, i8* %arrayidx981, align 1
  %conv982 = zext i8 %628 to i32
  %sub983 = sub nsw i32 %conv980, %conv982
  %629 = load i8*, i8** %m955, align 8
  %arrayidx984 = getelementptr inbounds i8, i8* %629, i64 0
  %630 = load i8, i8* %arrayidx984, align 1
  %conv985 = zext i8 %630 to i32
  %mul986 = mul nsw i32 %sub983, %conv985
  %add987 = add nsw i32 %shl978, %mul986
  %shr988 = ashr i32 %add987, 8
  %conv989 = trunc i32 %shr988 to i8
  %631 = load i8*, i8** %d957, align 8
  %arrayidx990 = getelementptr inbounds i8, i8* %631, i64 0
  store i8 %conv989, i8* %arrayidx990, align 1
  %632 = load i8*, i8** %cmap1, align 8
  %arrayidx991 = getelementptr inbounds i8, i8* %632, i64 1
  %633 = load i8, i8* %arrayidx991, align 1
  %conv992 = zext i8 %633 to i32
  %shl993 = shl i32 %conv992, 8
  %634 = load i8*, i8** %cmap2, align 8
  %arrayidx994 = getelementptr inbounds i8, i8* %634, i64 1
  %635 = load i8, i8* %arrayidx994, align 1
  %conv995 = zext i8 %635 to i32
  %636 = load i8*, i8** %cmap1, align 8
  %arrayidx996 = getelementptr inbounds i8, i8* %636, i64 1
  %637 = load i8, i8* %arrayidx996, align 1
  %conv997 = zext i8 %637 to i32
  %sub998 = sub nsw i32 %conv995, %conv997
  %638 = load i8*, i8** %m955, align 8
  %arrayidx999 = getelementptr inbounds i8, i8* %638, i64 0
  %639 = load i8, i8* %arrayidx999, align 1
  %conv1000 = zext i8 %639 to i32
  %mul1001 = mul nsw i32 %sub998, %conv1000
  %add1002 = add nsw i32 %shl993, %mul1001
  %shr1003 = ashr i32 %add1002, 8
  %conv1004 = trunc i32 %shr1003 to i8
  %640 = load i8*, i8** %d957, align 8
  %arrayidx1005 = getelementptr inbounds i8, i8* %640, i64 1
  store i8 %conv1004, i8* %arrayidx1005, align 1
  %641 = load i8*, i8** %cmap1, align 8
  %arrayidx1006 = getelementptr inbounds i8, i8* %641, i64 2
  %642 = load i8, i8* %arrayidx1006, align 1
  %conv1007 = zext i8 %642 to i32
  %shl1008 = shl i32 %conv1007, 8
  %643 = load i8*, i8** %cmap2, align 8
  %arrayidx1009 = getelementptr inbounds i8, i8* %643, i64 2
  %644 = load i8, i8* %arrayidx1009, align 1
  %conv1010 = zext i8 %644 to i32
  %645 = load i8*, i8** %cmap1, align 8
  %arrayidx1011 = getelementptr inbounds i8, i8* %645, i64 2
  %646 = load i8, i8* %arrayidx1011, align 1
  %conv1012 = zext i8 %646 to i32
  %sub1013 = sub nsw i32 %conv1010, %conv1012
  %647 = load i8*, i8** %m955, align 8
  %arrayidx1014 = getelementptr inbounds i8, i8* %647, i64 0
  %648 = load i8, i8* %arrayidx1014, align 1
  %conv1015 = zext i8 %648 to i32
  %mul1016 = mul nsw i32 %sub1013, %conv1015
  %add1017 = add nsw i32 %shl1008, %mul1016
  %shr1018 = ashr i32 %add1017, 8
  %conv1019 = trunc i32 %shr1018 to i8
  %649 = load i8*, i8** %d957, align 8
  %arrayidx1020 = getelementptr inbounds i8, i8* %649, i64 2
  store i8 %conv1019, i8* %arrayidx1020, align 1
  br label %for.inc.1021

for.inc.1021:                                     ; preds = %for.body.961
  %650 = load i32, i32* %col, align 4
  %inc1022 = add nsw i32 %650, 1
  store i32 %inc1022, i32* %col, align 4
  %651 = load i8*, i8** %s1951, align 8
  %incdec.ptr1023 = getelementptr inbounds i8, i8* %651, i32 1
  store i8* %incdec.ptr1023, i8** %s1951, align 8
  %652 = load i8*, i8** %s2953, align 8
  %incdec.ptr1024 = getelementptr inbounds i8, i8* %652, i32 1
  store i8* %incdec.ptr1024, i8** %s2953, align 8
  %653 = load i8*, i8** %m955, align 8
  %incdec.ptr1025 = getelementptr inbounds i8, i8* %653, i32 1
  store i8* %incdec.ptr1025, i8** %m955, align 8
  %654 = load i8*, i8** %d957, align 8
  %add.ptr1026 = getelementptr inbounds i8, i8* %654, i64 3
  store i8* %add.ptr1026, i8** %d957, align 8
  br label %for.cond.958

for.end.1027:                                     ; preds = %for.cond.958
  %655 = load i32, i32* %rowstride1.addr, align 4
  %656 = load i8*, i8** %src1, align 8
  %idx.ext1028 = sext i32 %655 to i64
  %add.ptr1029 = getelementptr inbounds i8, i8* %656, i64 %idx.ext1028
  store i8* %add.ptr1029, i8** %src1, align 8
  %657 = load i32, i32* %rowstride2.addr, align 4
  %658 = load i8*, i8** %src2, align 8
  %idx.ext1030 = sext i32 %657 to i64
  %add.ptr1031 = getelementptr inbounds i8, i8* %658, i64 %idx.ext1030
  store i8* %add.ptr1031, i8** %src2, align 8
  %659 = load i32, i32* %rowstride_mask.addr, align 4
  %660 = load i8*, i8** %src_mask, align 8
  %idx.ext1032 = sext i32 %659 to i64
  %add.ptr1033 = getelementptr inbounds i8, i8* %660, i64 %idx.ext1032
  store i8* %add.ptr1033, i8** %src_mask, align 8
  %661 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %rowstride1034 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %661, i32 0, i32 5
  %662 = load i32, i32* %rowstride1034, align 4
  %663 = load i8*, i8** %dest, align 8
  %idx.ext1035 = sext i32 %662 to i64
  %add.ptr1036 = getelementptr inbounds i8, i8* %663, i64 %idx.ext1035
  store i8* %add.ptr1036, i8** %dest, align 8
  br label %for.inc.1037

for.inc.1037:                                     ; preds = %for.end.1027
  %664 = load i32, i32* %row, align 4
  %inc1038 = add nsw i32 %664, 1
  store i32 %inc1038, i32* %row, align 4
  br label %for.cond.946

for.end.1039:                                     ; preds = %for.cond.946
  br label %sw.epilog.1460

sw.bb.1040:                                       ; preds = %if.end.124
  br label %do.body.1041

do.body.1041:                                     ; preds = %sw.bb.1040
  %665 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %colormap1042 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %665, i32 0, i32 11
  %666 = load i8*, i8** %colormap1042, align 8
  %cmp1043 = icmp ne i8* %666, null
  br i1 %cmp1043, label %if.then.1045, label %if.else.1046

if.then.1045:                                     ; preds = %do.body.1041
  br label %if.end.1047

if.else.1046:                                     ; preds = %do.body.1041
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_preview_area_mask, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.1047:                                      ; preds = %if.then.1045
  br label %do.end.1048

do.end.1048:                                      ; preds = %if.end.1047
  %667 = load i32, i32* %y.addr, align 4
  store i32 %667, i32* %row, align 4
  br label %for.cond.1049

for.cond.1049:                                    ; preds = %for.inc.1457, %do.end.1048
  %668 = load i32, i32* %row, align 4
  %669 = load i32, i32* %y.addr, align 4
  %670 = load i32, i32* %height.addr, align 4
  %add1050 = add nsw i32 %669, %670
  %cmp1051 = icmp slt i32 %668, %add1050
  br i1 %cmp1051, label %for.body.1053, label %for.end.1459

for.body.1053:                                    ; preds = %for.cond.1049
  %671 = load i8*, i8** %src1, align 8
  store i8* %671, i8** %s11055, align 8
  %672 = load i8*, i8** %src2, align 8
  store i8* %672, i8** %s21057, align 8
  %673 = load i8*, i8** %src_mask, align 8
  store i8* %673, i8** %m1059, align 8
  %674 = load i8*, i8** %dest, align 8
  store i8* %674, i8** %d1061, align 8
  %675 = load i32, i32* %x.addr, align 4
  store i32 %675, i32* %col, align 4
  br label %for.cond.1062

for.cond.1062:                                    ; preds = %for.inc.1441, %for.body.1053
  %676 = load i32, i32* %col, align 4
  %677 = load i32, i32* %x.addr, align 4
  %678 = load i32, i32* %width.addr, align 4
  %add1063 = add nsw i32 %677, %678
  %cmp1064 = icmp slt i32 %676, %add1063
  br i1 %cmp1064, label %for.body.1066, label %for.end.1447

for.body.1066:                                    ; preds = %for.cond.1062
  %679 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %colormap1069 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %679, i32 0, i32 11
  %680 = load i8*, i8** %colormap1069, align 8
  %681 = load i8*, i8** %s11055, align 8
  %arrayidx1070 = getelementptr inbounds i8, i8* %681, i64 0
  %682 = load i8, i8* %arrayidx1070, align 1
  %conv1071 = zext i8 %682 to i32
  %mul1072 = mul nsw i32 3, %conv1071
  %idx.ext1073 = sext i32 %mul1072 to i64
  %add.ptr1074 = getelementptr inbounds i8, i8* %680, i64 %idx.ext1073
  store i8* %add.ptr1074, i8** %cmap11068, align 8
  %683 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %colormap1077 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %683, i32 0, i32 11
  %684 = load i8*, i8** %colormap1077, align 8
  %685 = load i8*, i8** %s21057, align 8
  %arrayidx1078 = getelementptr inbounds i8, i8* %685, i64 0
  %686 = load i8, i8* %arrayidx1078, align 1
  %conv1079 = zext i8 %686 to i32
  %mul1080 = mul nsw i32 3, %conv1079
  %idx.ext1081 = sext i32 %mul1080 to i64
  %add.ptr1082 = getelementptr inbounds i8, i8* %684, i64 %idx.ext1081
  store i8* %add.ptr1082, i8** %cmap21076, align 8
  %687 = load i8*, i8** %m1059, align 8
  %arrayidx1083 = getelementptr inbounds i8, i8* %687, i64 0
  %688 = load i8, i8* %arrayidx1083, align 1
  %conv1084 = zext i8 %688 to i32
  switch i32 %conv1084, label %sw.default.1243 [
    i32 0, label %sw.bb.1085
    i32 255, label %sw.bb.1164
  ]

sw.bb.1085:                                       ; preds = %for.body.1066
  %689 = load i8*, i8** %s11055, align 8
  %arrayidx1086 = getelementptr inbounds i8, i8* %689, i64 1
  %690 = load i8, i8* %arrayidx1086, align 1
  %conv1087 = zext i8 %690 to i32
  switch i32 %conv1087, label %sw.default.1114 [
    i32 0, label %sw.bb.1088
    i32 255, label %sw.bb.1107
  ]

sw.bb.1088:                                       ; preds = %sw.bb.1085
  %691 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_y1089 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %691, i32 0, i32 7
  %692 = load i32, i32* %offset_y1089, align 4
  %693 = load i32, i32* %row, align 4
  %add1090 = add nsw i32 %692, %693
  %694 = load i32, i32* %size, align 4
  %and1091 = and i32 %add1090, %694
  %695 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_x1092 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %695, i32 0, i32 6
  %696 = load i32, i32* %offset_x1092, align 4
  %697 = load i32, i32* %col, align 4
  %add1093 = add nsw i32 %696, %697
  %698 = load i32, i32* %size, align 4
  %and1094 = and i32 %add1093, %698
  %xor1095 = xor i32 %and1091, %and1094
  %tobool1096 = icmp ne i32 %xor1095, 0
  br i1 %tobool1096, label %cond.true.1097, label %cond.false.1099

cond.true.1097:                                   ; preds = %sw.bb.1088
  %699 = load i8, i8* %dark, align 1
  %conv1098 = zext i8 %699 to i32
  br label %cond.end.1101

cond.false.1099:                                  ; preds = %sw.bb.1088
  %700 = load i8, i8* %light, align 1
  %conv1100 = zext i8 %700 to i32
  br label %cond.end.1101

cond.end.1101:                                    ; preds = %cond.false.1099, %cond.true.1097
  %cond1102 = phi i32 [ %conv1098, %cond.true.1097 ], [ %conv1100, %cond.false.1099 ]
  %conv1103 = trunc i32 %cond1102 to i8
  %701 = load i8*, i8** %d1061, align 8
  %arrayidx1104 = getelementptr inbounds i8, i8* %701, i64 2
  store i8 %conv1103, i8* %arrayidx1104, align 1
  %702 = load i8*, i8** %d1061, align 8
  %arrayidx1105 = getelementptr inbounds i8, i8* %702, i64 1
  store i8 %conv1103, i8* %arrayidx1105, align 1
  %703 = load i8*, i8** %d1061, align 8
  %arrayidx1106 = getelementptr inbounds i8, i8* %703, i64 0
  store i8 %conv1103, i8* %arrayidx1106, align 1
  br label %sw.epilog.1163

sw.bb.1107:                                       ; preds = %sw.bb.1085
  %704 = load i8*, i8** %cmap11068, align 8
  %arrayidx1108 = getelementptr inbounds i8, i8* %704, i64 0
  %705 = load i8, i8* %arrayidx1108, align 1
  %706 = load i8*, i8** %d1061, align 8
  %arrayidx1109 = getelementptr inbounds i8, i8* %706, i64 0
  store i8 %705, i8* %arrayidx1109, align 1
  %707 = load i8*, i8** %cmap11068, align 8
  %arrayidx1110 = getelementptr inbounds i8, i8* %707, i64 1
  %708 = load i8, i8* %arrayidx1110, align 1
  %709 = load i8*, i8** %d1061, align 8
  %arrayidx1111 = getelementptr inbounds i8, i8* %709, i64 1
  store i8 %708, i8* %arrayidx1111, align 1
  %710 = load i8*, i8** %cmap11068, align 8
  %arrayidx1112 = getelementptr inbounds i8, i8* %710, i64 2
  %711 = load i8, i8* %arrayidx1112, align 1
  %712 = load i8*, i8** %d1061, align 8
  %arrayidx1113 = getelementptr inbounds i8, i8* %712, i64 2
  store i8 %711, i8* %arrayidx1113, align 1
  br label %sw.epilog.1163

sw.default.1114:                                  ; preds = %sw.bb.1085
  %713 = load i8*, i8** %s11055, align 8
  %arrayidx1117 = getelementptr inbounds i8, i8* %713, i64 1
  %714 = load i8, i8* %arrayidx1117, align 1
  %conv1118 = zext i8 %714 to i32
  %add1119 = add nsw i32 %conv1118, 1
  store i32 %add1119, i32* %alpha1116, align 4
  %715 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_y1122 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %715, i32 0, i32 7
  %716 = load i32, i32* %offset_y1122, align 4
  %717 = load i32, i32* %row, align 4
  %add1123 = add nsw i32 %716, %717
  %718 = load i32, i32* %size, align 4
  %and1124 = and i32 %add1123, %718
  %719 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_x1125 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %719, i32 0, i32 6
  %720 = load i32, i32* %offset_x1125, align 4
  %721 = load i32, i32* %col, align 4
  %add1126 = add nsw i32 %720, %721
  %722 = load i32, i32* %size, align 4
  %and1127 = and i32 %add1126, %722
  %xor1128 = xor i32 %and1124, %and1127
  %tobool1129 = icmp ne i32 %xor1128, 0
  br i1 %tobool1129, label %cond.true.1130, label %cond.false.1132

cond.true.1130:                                   ; preds = %sw.default.1114
  %723 = load i8, i8* %dark, align 1
  %conv1131 = zext i8 %723 to i32
  br label %cond.end.1134

cond.false.1132:                                  ; preds = %sw.default.1114
  %724 = load i8, i8* %light, align 1
  %conv1133 = zext i8 %724 to i32
  br label %cond.end.1134

cond.end.1134:                                    ; preds = %cond.false.1132, %cond.true.1130
  %cond1135 = phi i32 [ %conv1131, %cond.true.1130 ], [ %conv1133, %cond.false.1132 ]
  store i32 %cond1135, i32* %check1121, align 4
  %725 = load i32, i32* %check1121, align 4
  %shl1136 = shl i32 %725, 8
  %726 = load i8*, i8** %cmap11068, align 8
  %arrayidx1137 = getelementptr inbounds i8, i8* %726, i64 0
  %727 = load i8, i8* %arrayidx1137, align 1
  %conv1138 = zext i8 %727 to i32
  %728 = load i32, i32* %check1121, align 4
  %sub1139 = sub i32 %conv1138, %728
  %729 = load i32, i32* %alpha1116, align 4
  %mul1140 = mul i32 %sub1139, %729
  %add1141 = add i32 %shl1136, %mul1140
  %shr1142 = lshr i32 %add1141, 8
  %conv1143 = trunc i32 %shr1142 to i8
  %730 = load i8*, i8** %d1061, align 8
  %arrayidx1144 = getelementptr inbounds i8, i8* %730, i64 0
  store i8 %conv1143, i8* %arrayidx1144, align 1
  %731 = load i32, i32* %check1121, align 4
  %shl1145 = shl i32 %731, 8
  %732 = load i8*, i8** %cmap11068, align 8
  %arrayidx1146 = getelementptr inbounds i8, i8* %732, i64 1
  %733 = load i8, i8* %arrayidx1146, align 1
  %conv1147 = zext i8 %733 to i32
  %734 = load i32, i32* %check1121, align 4
  %sub1148 = sub i32 %conv1147, %734
  %735 = load i32, i32* %alpha1116, align 4
  %mul1149 = mul i32 %sub1148, %735
  %add1150 = add i32 %shl1145, %mul1149
  %shr1151 = lshr i32 %add1150, 8
  %conv1152 = trunc i32 %shr1151 to i8
  %736 = load i8*, i8** %d1061, align 8
  %arrayidx1153 = getelementptr inbounds i8, i8* %736, i64 1
  store i8 %conv1152, i8* %arrayidx1153, align 1
  %737 = load i32, i32* %check1121, align 4
  %shl1154 = shl i32 %737, 8
  %738 = load i8*, i8** %cmap11068, align 8
  %arrayidx1155 = getelementptr inbounds i8, i8* %738, i64 2
  %739 = load i8, i8* %arrayidx1155, align 1
  %conv1156 = zext i8 %739 to i32
  %740 = load i32, i32* %check1121, align 4
  %sub1157 = sub i32 %conv1156, %740
  %741 = load i32, i32* %alpha1116, align 4
  %mul1158 = mul i32 %sub1157, %741
  %add1159 = add i32 %shl1154, %mul1158
  %shr1160 = lshr i32 %add1159, 8
  %conv1161 = trunc i32 %shr1160 to i8
  %742 = load i8*, i8** %d1061, align 8
  %arrayidx1162 = getelementptr inbounds i8, i8* %742, i64 2
  store i8 %conv1161, i8* %arrayidx1162, align 1
  br label %sw.epilog.1163

sw.epilog.1163:                                   ; preds = %cond.end.1134, %sw.bb.1107, %cond.end.1101
  br label %sw.epilog.1440

sw.bb.1164:                                       ; preds = %for.body.1066
  %743 = load i8*, i8** %s21057, align 8
  %arrayidx1165 = getelementptr inbounds i8, i8* %743, i64 1
  %744 = load i8, i8* %arrayidx1165, align 1
  %conv1166 = zext i8 %744 to i32
  switch i32 %conv1166, label %sw.default.1193 [
    i32 0, label %sw.bb.1167
    i32 255, label %sw.bb.1186
  ]

sw.bb.1167:                                       ; preds = %sw.bb.1164
  %745 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_y1168 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %745, i32 0, i32 7
  %746 = load i32, i32* %offset_y1168, align 4
  %747 = load i32, i32* %row, align 4
  %add1169 = add nsw i32 %746, %747
  %748 = load i32, i32* %size, align 4
  %and1170 = and i32 %add1169, %748
  %749 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_x1171 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %749, i32 0, i32 6
  %750 = load i32, i32* %offset_x1171, align 4
  %751 = load i32, i32* %col, align 4
  %add1172 = add nsw i32 %750, %751
  %752 = load i32, i32* %size, align 4
  %and1173 = and i32 %add1172, %752
  %xor1174 = xor i32 %and1170, %and1173
  %tobool1175 = icmp ne i32 %xor1174, 0
  br i1 %tobool1175, label %cond.true.1176, label %cond.false.1178

cond.true.1176:                                   ; preds = %sw.bb.1167
  %753 = load i8, i8* %dark, align 1
  %conv1177 = zext i8 %753 to i32
  br label %cond.end.1180

cond.false.1178:                                  ; preds = %sw.bb.1167
  %754 = load i8, i8* %light, align 1
  %conv1179 = zext i8 %754 to i32
  br label %cond.end.1180

cond.end.1180:                                    ; preds = %cond.false.1178, %cond.true.1176
  %cond1181 = phi i32 [ %conv1177, %cond.true.1176 ], [ %conv1179, %cond.false.1178 ]
  %conv1182 = trunc i32 %cond1181 to i8
  %755 = load i8*, i8** %d1061, align 8
  %arrayidx1183 = getelementptr inbounds i8, i8* %755, i64 2
  store i8 %conv1182, i8* %arrayidx1183, align 1
  %756 = load i8*, i8** %d1061, align 8
  %arrayidx1184 = getelementptr inbounds i8, i8* %756, i64 1
  store i8 %conv1182, i8* %arrayidx1184, align 1
  %757 = load i8*, i8** %d1061, align 8
  %arrayidx1185 = getelementptr inbounds i8, i8* %757, i64 0
  store i8 %conv1182, i8* %arrayidx1185, align 1
  br label %sw.epilog.1242

sw.bb.1186:                                       ; preds = %sw.bb.1164
  %758 = load i8*, i8** %cmap21076, align 8
  %arrayidx1187 = getelementptr inbounds i8, i8* %758, i64 0
  %759 = load i8, i8* %arrayidx1187, align 1
  %760 = load i8*, i8** %d1061, align 8
  %arrayidx1188 = getelementptr inbounds i8, i8* %760, i64 0
  store i8 %759, i8* %arrayidx1188, align 1
  %761 = load i8*, i8** %cmap21076, align 8
  %arrayidx1189 = getelementptr inbounds i8, i8* %761, i64 1
  %762 = load i8, i8* %arrayidx1189, align 1
  %763 = load i8*, i8** %d1061, align 8
  %arrayidx1190 = getelementptr inbounds i8, i8* %763, i64 1
  store i8 %762, i8* %arrayidx1190, align 1
  %764 = load i8*, i8** %cmap21076, align 8
  %arrayidx1191 = getelementptr inbounds i8, i8* %764, i64 2
  %765 = load i8, i8* %arrayidx1191, align 1
  %766 = load i8*, i8** %d1061, align 8
  %arrayidx1192 = getelementptr inbounds i8, i8* %766, i64 2
  store i8 %765, i8* %arrayidx1192, align 1
  br label %sw.epilog.1242

sw.default.1193:                                  ; preds = %sw.bb.1164
  %767 = load i8*, i8** %s21057, align 8
  %arrayidx1196 = getelementptr inbounds i8, i8* %767, i64 1
  %768 = load i8, i8* %arrayidx1196, align 1
  %conv1197 = zext i8 %768 to i32
  %add1198 = add nsw i32 %conv1197, 1
  store i32 %add1198, i32* %alpha1195, align 4
  %769 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_y1201 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %769, i32 0, i32 7
  %770 = load i32, i32* %offset_y1201, align 4
  %771 = load i32, i32* %row, align 4
  %add1202 = add nsw i32 %770, %771
  %772 = load i32, i32* %size, align 4
  %and1203 = and i32 %add1202, %772
  %773 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_x1204 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %773, i32 0, i32 6
  %774 = load i32, i32* %offset_x1204, align 4
  %775 = load i32, i32* %col, align 4
  %add1205 = add nsw i32 %774, %775
  %776 = load i32, i32* %size, align 4
  %and1206 = and i32 %add1205, %776
  %xor1207 = xor i32 %and1203, %and1206
  %tobool1208 = icmp ne i32 %xor1207, 0
  br i1 %tobool1208, label %cond.true.1209, label %cond.false.1211

cond.true.1209:                                   ; preds = %sw.default.1193
  %777 = load i8, i8* %dark, align 1
  %conv1210 = zext i8 %777 to i32
  br label %cond.end.1213

cond.false.1211:                                  ; preds = %sw.default.1193
  %778 = load i8, i8* %light, align 1
  %conv1212 = zext i8 %778 to i32
  br label %cond.end.1213

cond.end.1213:                                    ; preds = %cond.false.1211, %cond.true.1209
  %cond1214 = phi i32 [ %conv1210, %cond.true.1209 ], [ %conv1212, %cond.false.1211 ]
  store i32 %cond1214, i32* %check1200, align 4
  %779 = load i32, i32* %check1200, align 4
  %shl1215 = shl i32 %779, 8
  %780 = load i8*, i8** %cmap21076, align 8
  %arrayidx1216 = getelementptr inbounds i8, i8* %780, i64 0
  %781 = load i8, i8* %arrayidx1216, align 1
  %conv1217 = zext i8 %781 to i32
  %782 = load i32, i32* %check1200, align 4
  %sub1218 = sub i32 %conv1217, %782
  %783 = load i32, i32* %alpha1195, align 4
  %mul1219 = mul i32 %sub1218, %783
  %add1220 = add i32 %shl1215, %mul1219
  %shr1221 = lshr i32 %add1220, 8
  %conv1222 = trunc i32 %shr1221 to i8
  %784 = load i8*, i8** %d1061, align 8
  %arrayidx1223 = getelementptr inbounds i8, i8* %784, i64 0
  store i8 %conv1222, i8* %arrayidx1223, align 1
  %785 = load i32, i32* %check1200, align 4
  %shl1224 = shl i32 %785, 8
  %786 = load i8*, i8** %cmap21076, align 8
  %arrayidx1225 = getelementptr inbounds i8, i8* %786, i64 1
  %787 = load i8, i8* %arrayidx1225, align 1
  %conv1226 = zext i8 %787 to i32
  %788 = load i32, i32* %check1200, align 4
  %sub1227 = sub i32 %conv1226, %788
  %789 = load i32, i32* %alpha1195, align 4
  %mul1228 = mul i32 %sub1227, %789
  %add1229 = add i32 %shl1224, %mul1228
  %shr1230 = lshr i32 %add1229, 8
  %conv1231 = trunc i32 %shr1230 to i8
  %790 = load i8*, i8** %d1061, align 8
  %arrayidx1232 = getelementptr inbounds i8, i8* %790, i64 1
  store i8 %conv1231, i8* %arrayidx1232, align 1
  %791 = load i32, i32* %check1200, align 4
  %shl1233 = shl i32 %791, 8
  %792 = load i8*, i8** %cmap21076, align 8
  %arrayidx1234 = getelementptr inbounds i8, i8* %792, i64 2
  %793 = load i8, i8* %arrayidx1234, align 1
  %conv1235 = zext i8 %793 to i32
  %794 = load i32, i32* %check1200, align 4
  %sub1236 = sub i32 %conv1235, %794
  %795 = load i32, i32* %alpha1195, align 4
  %mul1237 = mul i32 %sub1236, %795
  %add1238 = add i32 %shl1233, %mul1237
  %shr1239 = lshr i32 %add1238, 8
  %conv1240 = trunc i32 %shr1239 to i8
  %796 = load i8*, i8** %d1061, align 8
  %arrayidx1241 = getelementptr inbounds i8, i8* %796, i64 2
  store i8 %conv1240, i8* %arrayidx1241, align 1
  br label %sw.epilog.1242

sw.epilog.1242:                                   ; preds = %cond.end.1213, %sw.bb.1186, %cond.end.1180
  br label %sw.epilog.1440

sw.default.1243:                                  ; preds = %for.body.1066
  %797 = load i8*, i8** %s11055, align 8
  %arrayidx1246 = getelementptr inbounds i8, i8* %797, i64 1
  %798 = load i8, i8* %arrayidx1246, align 1
  %conv1247 = zext i8 %798 to i32
  %799 = load i8*, i8** %s21057, align 8
  %arrayidx1248 = getelementptr inbounds i8, i8* %799, i64 1
  %800 = load i8, i8* %arrayidx1248, align 1
  %conv1249 = zext i8 %800 to i32
  %cmp1250 = icmp eq i32 %conv1247, %conv1249
  br i1 %cmp1250, label %if.then.1252, label %if.else.1300

if.then.1252:                                     ; preds = %sw.default.1243
  %801 = load i8*, i8** %cmap11068, align 8
  %arrayidx1253 = getelementptr inbounds i8, i8* %801, i64 0
  %802 = load i8, i8* %arrayidx1253, align 1
  %conv1254 = zext i8 %802 to i32
  %shl1255 = shl i32 %conv1254, 8
  %803 = load i8*, i8** %cmap21076, align 8
  %arrayidx1256 = getelementptr inbounds i8, i8* %803, i64 0
  %804 = load i8, i8* %arrayidx1256, align 1
  %conv1257 = zext i8 %804 to i32
  %805 = load i8*, i8** %cmap11068, align 8
  %arrayidx1258 = getelementptr inbounds i8, i8* %805, i64 0
  %806 = load i8, i8* %arrayidx1258, align 1
  %conv1259 = zext i8 %806 to i32
  %sub1260 = sub nsw i32 %conv1257, %conv1259
  %807 = load i8*, i8** %m1059, align 8
  %arrayidx1261 = getelementptr inbounds i8, i8* %807, i64 0
  %808 = load i8, i8* %arrayidx1261, align 1
  %conv1262 = zext i8 %808 to i32
  %mul1263 = mul nsw i32 %sub1260, %conv1262
  %add1264 = add nsw i32 %shl1255, %mul1263
  %shr1265 = ashr i32 %add1264, 8
  %conv1266 = trunc i32 %shr1265 to i8
  %arrayidx1267 = getelementptr inbounds [4 x i8], [4 x i8]* %inter1245, i32 0, i64 0
  store i8 %conv1266, i8* %arrayidx1267, align 1
  %809 = load i8*, i8** %cmap11068, align 8
  %arrayidx1268 = getelementptr inbounds i8, i8* %809, i64 1
  %810 = load i8, i8* %arrayidx1268, align 1
  %conv1269 = zext i8 %810 to i32
  %shl1270 = shl i32 %conv1269, 8
  %811 = load i8*, i8** %cmap21076, align 8
  %arrayidx1271 = getelementptr inbounds i8, i8* %811, i64 1
  %812 = load i8, i8* %arrayidx1271, align 1
  %conv1272 = zext i8 %812 to i32
  %813 = load i8*, i8** %cmap11068, align 8
  %arrayidx1273 = getelementptr inbounds i8, i8* %813, i64 1
  %814 = load i8, i8* %arrayidx1273, align 1
  %conv1274 = zext i8 %814 to i32
  %sub1275 = sub nsw i32 %conv1272, %conv1274
  %815 = load i8*, i8** %m1059, align 8
  %arrayidx1276 = getelementptr inbounds i8, i8* %815, i64 0
  %816 = load i8, i8* %arrayidx1276, align 1
  %conv1277 = zext i8 %816 to i32
  %mul1278 = mul nsw i32 %sub1275, %conv1277
  %add1279 = add nsw i32 %shl1270, %mul1278
  %shr1280 = ashr i32 %add1279, 8
  %conv1281 = trunc i32 %shr1280 to i8
  %arrayidx1282 = getelementptr inbounds [4 x i8], [4 x i8]* %inter1245, i32 0, i64 1
  store i8 %conv1281, i8* %arrayidx1282, align 1
  %817 = load i8*, i8** %cmap11068, align 8
  %arrayidx1283 = getelementptr inbounds i8, i8* %817, i64 2
  %818 = load i8, i8* %arrayidx1283, align 1
  %conv1284 = zext i8 %818 to i32
  %shl1285 = shl i32 %conv1284, 8
  %819 = load i8*, i8** %cmap21076, align 8
  %arrayidx1286 = getelementptr inbounds i8, i8* %819, i64 2
  %820 = load i8, i8* %arrayidx1286, align 1
  %conv1287 = zext i8 %820 to i32
  %821 = load i8*, i8** %cmap11068, align 8
  %arrayidx1288 = getelementptr inbounds i8, i8* %821, i64 2
  %822 = load i8, i8* %arrayidx1288, align 1
  %conv1289 = zext i8 %822 to i32
  %sub1290 = sub nsw i32 %conv1287, %conv1289
  %823 = load i8*, i8** %m1059, align 8
  %arrayidx1291 = getelementptr inbounds i8, i8* %823, i64 0
  %824 = load i8, i8* %arrayidx1291, align 1
  %conv1292 = zext i8 %824 to i32
  %mul1293 = mul nsw i32 %sub1290, %conv1292
  %add1294 = add nsw i32 %shl1285, %mul1293
  %shr1295 = ashr i32 %add1294, 8
  %conv1296 = trunc i32 %shr1295 to i8
  %arrayidx1297 = getelementptr inbounds [4 x i8], [4 x i8]* %inter1245, i32 0, i64 2
  store i8 %conv1296, i8* %arrayidx1297, align 1
  %825 = load i8*, i8** %s11055, align 8
  %arrayidx1298 = getelementptr inbounds i8, i8* %825, i64 1
  %826 = load i8, i8* %arrayidx1298, align 1
  %arrayidx1299 = getelementptr inbounds [4 x i8], [4 x i8]* %inter1245, i32 0, i64 3
  store i8 %826, i8* %arrayidx1299, align 1
  br label %if.end.1361

if.else.1300:                                     ; preds = %sw.default.1243
  %827 = load i8*, i8** %s11055, align 8
  %arrayidx1301 = getelementptr inbounds i8, i8* %827, i64 1
  %828 = load i8, i8* %arrayidx1301, align 1
  %conv1302 = zext i8 %828 to i32
  %shl1303 = shl i32 %conv1302, 8
  %829 = load i8*, i8** %s21057, align 8
  %arrayidx1304 = getelementptr inbounds i8, i8* %829, i64 1
  %830 = load i8, i8* %arrayidx1304, align 1
  %conv1305 = zext i8 %830 to i32
  %831 = load i8*, i8** %s11055, align 8
  %arrayidx1306 = getelementptr inbounds i8, i8* %831, i64 1
  %832 = load i8, i8* %arrayidx1306, align 1
  %conv1307 = zext i8 %832 to i32
  %sub1308 = sub nsw i32 %conv1305, %conv1307
  %833 = load i8*, i8** %m1059, align 8
  %arrayidx1309 = getelementptr inbounds i8, i8* %833, i64 0
  %834 = load i8, i8* %arrayidx1309, align 1
  %conv1310 = zext i8 %834 to i32
  %mul1311 = mul nsw i32 %sub1308, %conv1310
  %add1312 = add nsw i32 %shl1303, %mul1311
  %shr1313 = ashr i32 %add1312, 8
  %conv1314 = trunc i32 %shr1313 to i8
  %arrayidx1315 = getelementptr inbounds [4 x i8], [4 x i8]* %inter1245, i32 0, i64 3
  store i8 %conv1314, i8* %arrayidx1315, align 1
  %arrayidx1316 = getelementptr inbounds [4 x i8], [4 x i8]* %inter1245, i32 0, i64 3
  %835 = load i8, i8* %arrayidx1316, align 1
  %tobool1317 = icmp ne i8 %835, 0
  br i1 %tobool1317, label %if.then.1318, label %if.end.1360

if.then.1318:                                     ; preds = %if.else.1300
  store i32 0, i32* %i, align 4
  br label %for.cond.1319

for.cond.1319:                                    ; preds = %for.inc.1357, %if.then.1318
  %836 = load i32, i32* %i, align 4
  %cmp1320 = icmp slt i32 %836, 3
  br i1 %cmp1320, label %for.body.1322, label %for.end.1359

for.body.1322:                                    ; preds = %for.cond.1319
  %837 = load i32, i32* %i, align 4
  %idxprom1325 = sext i32 %837 to i64
  %838 = load i8*, i8** %cmap11068, align 8
  %arrayidx1326 = getelementptr inbounds i8, i8* %838, i64 %idxprom1325
  %839 = load i8, i8* %arrayidx1326, align 1
  %conv1327 = zext i8 %839 to i32
  %840 = load i8*, i8** %s11055, align 8
  %arrayidx1328 = getelementptr inbounds i8, i8* %840, i64 1
  %841 = load i8, i8* %arrayidx1328, align 1
  %conv1329 = zext i8 %841 to i32
  %mul1330 = mul nsw i32 %conv1327, %conv1329
  %conv1331 = trunc i32 %mul1330 to i16
  store i16 %conv1331, i16* %a1324, align 2
  %842 = load i32, i32* %i, align 4
  %idxprom1334 = sext i32 %842 to i64
  %843 = load i8*, i8** %cmap21076, align 8
  %arrayidx1335 = getelementptr inbounds i8, i8* %843, i64 %idxprom1334
  %844 = load i8, i8* %arrayidx1335, align 1
  %conv1336 = zext i8 %844 to i32
  %845 = load i8*, i8** %s21057, align 8
  %arrayidx1337 = getelementptr inbounds i8, i8* %845, i64 1
  %846 = load i8, i8* %arrayidx1337, align 1
  %conv1338 = zext i8 %846 to i32
  %mul1339 = mul nsw i32 %conv1336, %conv1338
  %conv1340 = trunc i32 %mul1339 to i16
  store i16 %conv1340, i16* %b1333, align 2
  %847 = load i16, i16* %a1324, align 2
  %conv1341 = zext i16 %847 to i32
  %shl1342 = shl i32 %conv1341, 8
  %848 = load i16, i16* %b1333, align 2
  %conv1343 = zext i16 %848 to i32
  %849 = load i16, i16* %a1324, align 2
  %conv1344 = zext i16 %849 to i32
  %sub1345 = sub nsw i32 %conv1343, %conv1344
  %850 = load i8*, i8** %m1059, align 8
  %arrayidx1346 = getelementptr inbounds i8, i8* %850, i64 0
  %851 = load i8, i8* %arrayidx1346, align 1
  %conv1347 = zext i8 %851 to i32
  %mul1348 = mul nsw i32 %sub1345, %conv1347
  %add1349 = add nsw i32 %shl1342, %mul1348
  %shr1350 = ashr i32 %add1349, 8
  %arrayidx1351 = getelementptr inbounds [4 x i8], [4 x i8]* %inter1245, i32 0, i64 3
  %852 = load i8, i8* %arrayidx1351, align 1
  %conv1352 = zext i8 %852 to i32
  %div1353 = sdiv i32 %shr1350, %conv1352
  %conv1354 = trunc i32 %div1353 to i8
  %853 = load i32, i32* %i, align 4
  %idxprom1355 = sext i32 %853 to i64
  %arrayidx1356 = getelementptr inbounds [4 x i8], [4 x i8]* %inter1245, i32 0, i64 %idxprom1355
  store i8 %conv1354, i8* %arrayidx1356, align 1
  br label %for.inc.1357

for.inc.1357:                                     ; preds = %for.body.1322
  %854 = load i32, i32* %i, align 4
  %inc1358 = add nsw i32 %854, 1
  store i32 %inc1358, i32* %i, align 4
  br label %for.cond.1319

for.end.1359:                                     ; preds = %for.cond.1319
  br label %if.end.1360

if.end.1360:                                      ; preds = %for.end.1359, %if.else.1300
  br label %if.end.1361

if.end.1361:                                      ; preds = %if.end.1360, %if.then.1252
  %arrayidx1362 = getelementptr inbounds [4 x i8], [4 x i8]* %inter1245, i32 0, i64 3
  %855 = load i8, i8* %arrayidx1362, align 1
  %conv1363 = zext i8 %855 to i32
  switch i32 %conv1363, label %sw.default.1390 [
    i32 0, label %sw.bb.1364
    i32 255, label %sw.bb.1383
  ]

sw.bb.1364:                                       ; preds = %if.end.1361
  %856 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_y1365 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %856, i32 0, i32 7
  %857 = load i32, i32* %offset_y1365, align 4
  %858 = load i32, i32* %row, align 4
  %add1366 = add nsw i32 %857, %858
  %859 = load i32, i32* %size, align 4
  %and1367 = and i32 %add1366, %859
  %860 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_x1368 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %860, i32 0, i32 6
  %861 = load i32, i32* %offset_x1368, align 4
  %862 = load i32, i32* %col, align 4
  %add1369 = add nsw i32 %861, %862
  %863 = load i32, i32* %size, align 4
  %and1370 = and i32 %add1369, %863
  %xor1371 = xor i32 %and1367, %and1370
  %tobool1372 = icmp ne i32 %xor1371, 0
  br i1 %tobool1372, label %cond.true.1373, label %cond.false.1375

cond.true.1373:                                   ; preds = %sw.bb.1364
  %864 = load i8, i8* %dark, align 1
  %conv1374 = zext i8 %864 to i32
  br label %cond.end.1377

cond.false.1375:                                  ; preds = %sw.bb.1364
  %865 = load i8, i8* %light, align 1
  %conv1376 = zext i8 %865 to i32
  br label %cond.end.1377

cond.end.1377:                                    ; preds = %cond.false.1375, %cond.true.1373
  %cond1378 = phi i32 [ %conv1374, %cond.true.1373 ], [ %conv1376, %cond.false.1375 ]
  %conv1379 = trunc i32 %cond1378 to i8
  %866 = load i8*, i8** %d1061, align 8
  %arrayidx1380 = getelementptr inbounds i8, i8* %866, i64 2
  store i8 %conv1379, i8* %arrayidx1380, align 1
  %867 = load i8*, i8** %d1061, align 8
  %arrayidx1381 = getelementptr inbounds i8, i8* %867, i64 1
  store i8 %conv1379, i8* %arrayidx1381, align 1
  %868 = load i8*, i8** %d1061, align 8
  %arrayidx1382 = getelementptr inbounds i8, i8* %868, i64 0
  store i8 %conv1379, i8* %arrayidx1382, align 1
  br label %sw.epilog.1439

sw.bb.1383:                                       ; preds = %if.end.1361
  %arrayidx1384 = getelementptr inbounds [4 x i8], [4 x i8]* %inter1245, i32 0, i64 0
  %869 = load i8, i8* %arrayidx1384, align 1
  %870 = load i8*, i8** %d1061, align 8
  %arrayidx1385 = getelementptr inbounds i8, i8* %870, i64 0
  store i8 %869, i8* %arrayidx1385, align 1
  %arrayidx1386 = getelementptr inbounds [4 x i8], [4 x i8]* %inter1245, i32 0, i64 1
  %871 = load i8, i8* %arrayidx1386, align 1
  %872 = load i8*, i8** %d1061, align 8
  %arrayidx1387 = getelementptr inbounds i8, i8* %872, i64 1
  store i8 %871, i8* %arrayidx1387, align 1
  %arrayidx1388 = getelementptr inbounds [4 x i8], [4 x i8]* %inter1245, i32 0, i64 2
  %873 = load i8, i8* %arrayidx1388, align 1
  %874 = load i8*, i8** %d1061, align 8
  %arrayidx1389 = getelementptr inbounds i8, i8* %874, i64 2
  store i8 %873, i8* %arrayidx1389, align 1
  br label %sw.epilog.1439

sw.default.1390:                                  ; preds = %if.end.1361
  %arrayidx1393 = getelementptr inbounds [4 x i8], [4 x i8]* %inter1245, i32 0, i64 3
  %875 = load i8, i8* %arrayidx1393, align 1
  %conv1394 = zext i8 %875 to i32
  %add1395 = add nsw i32 %conv1394, 1
  store i32 %add1395, i32* %alpha1392, align 4
  %876 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_y1398 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %876, i32 0, i32 7
  %877 = load i32, i32* %offset_y1398, align 4
  %878 = load i32, i32* %row, align 4
  %add1399 = add nsw i32 %877, %878
  %879 = load i32, i32* %size, align 4
  %and1400 = and i32 %add1399, %879
  %880 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_x1401 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %880, i32 0, i32 6
  %881 = load i32, i32* %offset_x1401, align 4
  %882 = load i32, i32* %col, align 4
  %add1402 = add nsw i32 %881, %882
  %883 = load i32, i32* %size, align 4
  %and1403 = and i32 %add1402, %883
  %xor1404 = xor i32 %and1400, %and1403
  %tobool1405 = icmp ne i32 %xor1404, 0
  br i1 %tobool1405, label %cond.true.1406, label %cond.false.1408

cond.true.1406:                                   ; preds = %sw.default.1390
  %884 = load i8, i8* %dark, align 1
  %conv1407 = zext i8 %884 to i32
  br label %cond.end.1410

cond.false.1408:                                  ; preds = %sw.default.1390
  %885 = load i8, i8* %light, align 1
  %conv1409 = zext i8 %885 to i32
  br label %cond.end.1410

cond.end.1410:                                    ; preds = %cond.false.1408, %cond.true.1406
  %cond1411 = phi i32 [ %conv1407, %cond.true.1406 ], [ %conv1409, %cond.false.1408 ]
  store i32 %cond1411, i32* %check1397, align 4
  %886 = load i32, i32* %check1397, align 4
  %shl1412 = shl i32 %886, 8
  %arrayidx1413 = getelementptr inbounds [4 x i8], [4 x i8]* %inter1245, i32 0, i64 0
  %887 = load i8, i8* %arrayidx1413, align 1
  %conv1414 = zext i8 %887 to i32
  %888 = load i32, i32* %check1397, align 4
  %sub1415 = sub i32 %conv1414, %888
  %889 = load i32, i32* %alpha1392, align 4
  %mul1416 = mul i32 %sub1415, %889
  %add1417 = add i32 %shl1412, %mul1416
  %shr1418 = lshr i32 %add1417, 8
  %conv1419 = trunc i32 %shr1418 to i8
  %890 = load i8*, i8** %d1061, align 8
  %arrayidx1420 = getelementptr inbounds i8, i8* %890, i64 0
  store i8 %conv1419, i8* %arrayidx1420, align 1
  %891 = load i32, i32* %check1397, align 4
  %shl1421 = shl i32 %891, 8
  %arrayidx1422 = getelementptr inbounds [4 x i8], [4 x i8]* %inter1245, i32 0, i64 1
  %892 = load i8, i8* %arrayidx1422, align 1
  %conv1423 = zext i8 %892 to i32
  %893 = load i32, i32* %check1397, align 4
  %sub1424 = sub i32 %conv1423, %893
  %894 = load i32, i32* %alpha1392, align 4
  %mul1425 = mul i32 %sub1424, %894
  %add1426 = add i32 %shl1421, %mul1425
  %shr1427 = lshr i32 %add1426, 8
  %conv1428 = trunc i32 %shr1427 to i8
  %895 = load i8*, i8** %d1061, align 8
  %arrayidx1429 = getelementptr inbounds i8, i8* %895, i64 1
  store i8 %conv1428, i8* %arrayidx1429, align 1
  %896 = load i32, i32* %check1397, align 4
  %shl1430 = shl i32 %896, 8
  %arrayidx1431 = getelementptr inbounds [4 x i8], [4 x i8]* %inter1245, i32 0, i64 2
  %897 = load i8, i8* %arrayidx1431, align 1
  %conv1432 = zext i8 %897 to i32
  %898 = load i32, i32* %check1397, align 4
  %sub1433 = sub i32 %conv1432, %898
  %899 = load i32, i32* %alpha1392, align 4
  %mul1434 = mul i32 %sub1433, %899
  %add1435 = add i32 %shl1430, %mul1434
  %shr1436 = lshr i32 %add1435, 8
  %conv1437 = trunc i32 %shr1436 to i8
  %900 = load i8*, i8** %d1061, align 8
  %arrayidx1438 = getelementptr inbounds i8, i8* %900, i64 2
  store i8 %conv1437, i8* %arrayidx1438, align 1
  br label %sw.epilog.1439

sw.epilog.1439:                                   ; preds = %cond.end.1410, %sw.bb.1383, %cond.end.1377
  br label %sw.epilog.1440

sw.epilog.1440:                                   ; preds = %sw.epilog.1439, %sw.epilog.1242, %sw.epilog.1163
  br label %for.inc.1441

for.inc.1441:                                     ; preds = %sw.epilog.1440
  %901 = load i32, i32* %col, align 4
  %inc1442 = add nsw i32 %901, 1
  store i32 %inc1442, i32* %col, align 4
  %902 = load i8*, i8** %s11055, align 8
  %add.ptr1443 = getelementptr inbounds i8, i8* %902, i64 2
  store i8* %add.ptr1443, i8** %s11055, align 8
  %903 = load i8*, i8** %s21057, align 8
  %add.ptr1444 = getelementptr inbounds i8, i8* %903, i64 2
  store i8* %add.ptr1444, i8** %s21057, align 8
  %904 = load i8*, i8** %m1059, align 8
  %incdec.ptr1445 = getelementptr inbounds i8, i8* %904, i32 1
  store i8* %incdec.ptr1445, i8** %m1059, align 8
  %905 = load i8*, i8** %d1061, align 8
  %add.ptr1446 = getelementptr inbounds i8, i8* %905, i64 3
  store i8* %add.ptr1446, i8** %d1061, align 8
  br label %for.cond.1062

for.end.1447:                                     ; preds = %for.cond.1062
  %906 = load i32, i32* %rowstride1.addr, align 4
  %907 = load i8*, i8** %src1, align 8
  %idx.ext1448 = sext i32 %906 to i64
  %add.ptr1449 = getelementptr inbounds i8, i8* %907, i64 %idx.ext1448
  store i8* %add.ptr1449, i8** %src1, align 8
  %908 = load i32, i32* %rowstride2.addr, align 4
  %909 = load i8*, i8** %src2, align 8
  %idx.ext1450 = sext i32 %908 to i64
  %add.ptr1451 = getelementptr inbounds i8, i8* %909, i64 %idx.ext1450
  store i8* %add.ptr1451, i8** %src2, align 8
  %910 = load i32, i32* %rowstride_mask.addr, align 4
  %911 = load i8*, i8** %src_mask, align 8
  %idx.ext1452 = sext i32 %910 to i64
  %add.ptr1453 = getelementptr inbounds i8, i8* %911, i64 %idx.ext1452
  store i8* %add.ptr1453, i8** %src_mask, align 8
  %912 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %rowstride1454 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %912, i32 0, i32 5
  %913 = load i32, i32* %rowstride1454, align 4
  %914 = load i8*, i8** %dest, align 8
  %idx.ext1455 = sext i32 %913 to i64
  %add.ptr1456 = getelementptr inbounds i8, i8* %914, i64 %idx.ext1455
  store i8* %add.ptr1456, i8** %dest, align 8
  br label %for.inc.1457

for.inc.1457:                                     ; preds = %for.end.1447
  %915 = load i32, i32* %row, align 4
  %inc1458 = add nsw i32 %915, 1
  store i32 %inc1458, i32* %row, align 4
  br label %for.cond.1049

for.end.1459:                                     ; preds = %for.cond.1049
  br label %sw.epilog.1460

sw.epilog.1460:                                   ; preds = %if.end.124, %for.end.1459, %for.end.1039, %for.end.937, %for.end.635, %for.end.582, %for.end.202
  %916 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %917 = load i32, i32* %x.addr, align 4
  %918 = load i32, i32* %y.addr, align 4
  %919 = load i32, i32* %width.addr, align 4
  %920 = load i32, i32* %height.addr, align 4
  call void @gimp_preview_area_queue_draw(%struct._GimpPreviewArea* %916, i32 %917, i32 %918, i32 %919, i32 %920)
  br label %return

return:                                           ; preds = %sw.epilog.1460, %if.else.1046, %if.else.943, %if.then.70, %if.then.63, %if.else.56, %if.else.50, %if.else.44, %if.else.38, %if.else.32, %if.else.26, %if.then.21, %if.else.16, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_preview_area_fill(%struct._GimpPreviewArea* %area, i32 %x, i32 %y, i32 %width, i32 %height, i8 zeroext %red, i8 zeroext %green, i8 zeroext %blue) #3 {
entry:
  %area.addr = alloca %struct._GimpPreviewArea*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %red.addr = alloca i8, align 1
  %green.addr = alloca i8, align 1
  %blue.addr = alloca i8, align 1
  %dest = alloca i8*, align 8
  %d = alloca i8*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPreviewArea* %area, %struct._GimpPreviewArea** %area.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i8 %red, i8* %red.addr, align 1
  store i8 %green, i8* %green.addr, align 1
  store i8 %blue, i8* %blue.addr, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %1 = bitcast %struct._GimpPreviewArea* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_preview_area_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_preview_area_fill, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %width.addr, align 4
  %cmp12 = icmp sge i32 %13, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %height.addr, align 4
  %cmp14 = icmp sge i32 %14, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_preview_area_fill, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %15 = load i32, i32* %width.addr, align 4
  %cmp19 = icmp eq i32 %15, 0
  br i1 %cmp19, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.18
  %16 = load i32, i32* %height.addr, align 4
  %cmp20 = icmp eq i32 %16, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %lor.lhs.false, %do.end.18
  br label %return

if.end.22:                                        ; preds = %lor.lhs.false
  %17 = load i32, i32* %x.addr, align 4
  %18 = load i32, i32* %width.addr, align 4
  %add = add nsw i32 %17, %18
  %cmp23 = icmp slt i32 %add, 0
  br i1 %cmp23, label %if.then.27, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %if.end.22
  %19 = load i32, i32* %x.addr, align 4
  %20 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %width25 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %20, i32 0, i32 3
  %21 = load i32, i32* %width25, align 4
  %cmp26 = icmp sge i32 %19, %21
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %lor.lhs.false.24, %if.end.22
  br label %return

if.end.28:                                        ; preds = %lor.lhs.false.24
  %22 = load i32, i32* %y.addr, align 4
  %23 = load i32, i32* %height.addr, align 4
  %add29 = add nsw i32 %22, %23
  %cmp30 = icmp slt i32 %add29, 0
  br i1 %cmp30, label %if.then.34, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %if.end.28
  %24 = load i32, i32* %y.addr, align 4
  %25 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %height32 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %25, i32 0, i32 4
  %26 = load i32, i32* %height32, align 4
  %cmp33 = icmp sge i32 %24, %26
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %lor.lhs.false.31, %if.end.28
  br label %return

if.end.35:                                        ; preds = %lor.lhs.false.31
  %27 = load i32, i32* %x.addr, align 4
  %cmp36 = icmp slt i32 %27, 0
  br i1 %cmp36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %if.end.35
  %28 = load i32, i32* %x.addr, align 4
  %29 = load i32, i32* %width.addr, align 4
  %add38 = add nsw i32 %29, %28
  store i32 %add38, i32* %width.addr, align 4
  store i32 0, i32* %x.addr, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %if.end.35
  %30 = load i32, i32* %x.addr, align 4
  %31 = load i32, i32* %width.addr, align 4
  %add40 = add nsw i32 %30, %31
  %32 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %width41 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %32, i32 0, i32 3
  %33 = load i32, i32* %width41, align 4
  %cmp42 = icmp sgt i32 %add40, %33
  br i1 %cmp42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.39
  %34 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %width44 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %34, i32 0, i32 3
  %35 = load i32, i32* %width44, align 4
  %36 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 %35, %36
  store i32 %sub, i32* %width.addr, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.end.39
  %37 = load i32, i32* %y.addr, align 4
  %cmp46 = icmp slt i32 %37, 0
  br i1 %cmp46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.end.45
  %38 = load i32, i32* %y.addr, align 4
  %39 = load i32, i32* %height.addr, align 4
  %add48 = add nsw i32 %39, %38
  store i32 %add48, i32* %height.addr, align 4
  store i32 0, i32* %y.addr, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.end.45
  %40 = load i32, i32* %y.addr, align 4
  %41 = load i32, i32* %height.addr, align 4
  %add50 = add nsw i32 %40, %41
  %42 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %height51 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %42, i32 0, i32 4
  %43 = load i32, i32* %height51, align 4
  %cmp52 = icmp sgt i32 %add50, %43
  br i1 %cmp52, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %if.end.49
  %44 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %height54 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %44, i32 0, i32 4
  %45 = load i32, i32* %height54, align 4
  %46 = load i32, i32* %y.addr, align 4
  %sub55 = sub nsw i32 %45, %46
  store i32 %sub55, i32* %height.addr, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %if.end.49
  %47 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %buf = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %47, i32 0, i32 10
  %48 = load i8*, i8** %buf, align 8
  %tobool57 = icmp ne i8* %48, null
  br i1 %tobool57, label %if.end.66, label %if.then.58

if.then.58:                                       ; preds = %if.end.56
  %49 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %width59 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %49, i32 0, i32 3
  %50 = load i32, i32* %width59, align 4
  %mul = mul nsw i32 %50, 3
  %add60 = add nsw i32 %mul, 3
  %and = and i32 %add60, -4
  %51 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %rowstride = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %51, i32 0, i32 5
  store i32 %and, i32* %rowstride, align 4
  %52 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %rowstride61 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %52, i32 0, i32 5
  %53 = load i32, i32* %rowstride61, align 4
  %54 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %height62 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %54, i32 0, i32 4
  %55 = load i32, i32* %height62, align 4
  %mul63 = mul nsw i32 %53, %55
  %conv = sext i32 %mul63 to i64
  %call64 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  %56 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %buf65 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %56, i32 0, i32 10
  store i8* %call64, i8** %buf65, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.58, %if.end.56
  %57 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %buf67 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %57, i32 0, i32 10
  %58 = load i8*, i8** %buf67, align 8
  %59 = load i32, i32* %x.addr, align 4
  %mul68 = mul nsw i32 %59, 3
  %idx.ext = sext i32 %mul68 to i64
  %add.ptr = getelementptr inbounds i8, i8* %58, i64 %idx.ext
  %60 = load i32, i32* %y.addr, align 4
  %61 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %rowstride69 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %61, i32 0, i32 5
  %62 = load i32, i32* %rowstride69, align 4
  %mul70 = mul nsw i32 %60, %62
  %idx.ext71 = sext i32 %mul70 to i64
  %add.ptr72 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext71
  store i8* %add.ptr72, i8** %dest, align 8
  store i32 0, i32* %col, align 4
  %63 = load i8*, i8** %dest, align 8
  store i8* %63, i8** %d, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.66
  %64 = load i32, i32* %col, align 4
  %65 = load i32, i32* %width.addr, align 4
  %cmp73 = icmp slt i32 %64, %65
  br i1 %cmp73, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %66 = load i8, i8* %red.addr, align 1
  %67 = load i8*, i8** %d, align 8
  %arrayidx = getelementptr inbounds i8, i8* %67, i64 0
  store i8 %66, i8* %arrayidx, align 1
  %68 = load i8, i8* %green.addr, align 1
  %69 = load i8*, i8** %d, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %69, i64 1
  store i8 %68, i8* %arrayidx75, align 1
  %70 = load i8, i8* %blue.addr, align 1
  %71 = load i8*, i8** %d, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %71, i64 2
  store i8 %70, i8* %arrayidx76, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %72 = load i32, i32* %col, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %col, align 4
  %73 = load i8*, i8** %d, align 8
  %add.ptr77 = getelementptr inbounds i8, i8* %73, i64 3
  store i8* %add.ptr77, i8** %d, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %row, align 4
  %74 = load i8*, i8** %dest, align 8
  store i8* %74, i8** %d, align 8
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.87, %for.end
  %75 = load i32, i32* %row, align 4
  %76 = load i32, i32* %height.addr, align 4
  %cmp79 = icmp slt i32 %75, %76
  br i1 %cmp79, label %for.body.81, label %for.end.89

for.body.81:                                      ; preds = %for.cond.78
  %77 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %rowstride82 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %77, i32 0, i32 5
  %78 = load i32, i32* %rowstride82, align 4
  %79 = load i8*, i8** %d, align 8
  %idx.ext83 = sext i32 %78 to i64
  %add.ptr84 = getelementptr inbounds i8, i8* %79, i64 %idx.ext83
  store i8* %add.ptr84, i8** %d, align 8
  %80 = load i8*, i8** %d, align 8
  %81 = load i8*, i8** %dest, align 8
  %82 = load i32, i32* %width.addr, align 4
  %mul85 = mul nsw i32 %82, 3
  %conv86 = sext i32 %mul85 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* %81, i64 %conv86, i32 1, i1 false)
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.body.81
  %83 = load i32, i32* %row, align 4
  %inc88 = add nsw i32 %83, 1
  store i32 %inc88, i32* %row, align 4
  br label %for.cond.78

for.end.89:                                       ; preds = %for.cond.78
  %84 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %85 = load i32, i32* %x.addr, align 4
  %86 = load i32, i32* %y.addr, align 4
  %87 = load i32, i32* %width.addr, align 4
  %88 = load i32, i32* %height.addr, align 4
  call void @gimp_preview_area_queue_draw(%struct._GimpPreviewArea* %84, i32 %85, i32 %86, i32 %87, i32 %88)
  br label %return

return:                                           ; preds = %for.end.89, %if.then.34, %if.then.27, %if.then.21, %if.else.16, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_preview_area_set_offsets(%struct._GimpPreviewArea* %area, i32 %x, i32 %y) #3 {
entry:
  %area.addr = alloca %struct._GimpPreviewArea*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPreviewArea* %area, %struct._GimpPreviewArea** %area.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %1 = bitcast %struct._GimpPreviewArea* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_preview_area_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_preview_area_set_offsets, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %x.addr, align 4
  %14 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %14, i32 0, i32 6
  store i32 %13, i32* %offset_x, align 4
  %15 = load i32, i32* %y.addr, align 4
  %16 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %16, i32 0, i32 7
  store i32 %15, i32* %offset_y, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_preview_area_set_colormap(%struct._GimpPreviewArea* %area, i8* %colormap, i32 %num_colors) #3 {
entry:
  %area.addr = alloca %struct._GimpPreviewArea*, align 8
  %colormap.addr = alloca i8*, align 8
  %num_colors.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPreviewArea* %area, %struct._GimpPreviewArea** %area.addr, align 8
  store i8* %colormap, i8** %colormap.addr, align 8
  store i32 %num_colors, i32* %num_colors.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %1 = bitcast %struct._GimpPreviewArea* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_preview_area_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_preview_area_set_colormap, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.40

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %colormap.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load i32, i32* %num_colors.addr, align 4
  %cmp13 = icmp eq i32 %14, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_preview_area_set_colormap, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.40

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %15 = load i32, i32* %num_colors.addr, align 4
  %cmp19 = icmp sge i32 %15, 0
  br i1 %cmp19, label %land.lhs.true.20, label %if.else.23

land.lhs.true.20:                                 ; preds = %do.body.18
  %16 = load i32, i32* %num_colors.addr, align 4
  %cmp21 = icmp sle i32 %16, 256
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %land.lhs.true.20
  br label %if.end.24

if.else.23:                                       ; preds = %land.lhs.true.20, %do.body.18
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_preview_area_set_colormap, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.40

if.end.24:                                        ; preds = %if.then.22
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  %17 = load i32, i32* %num_colors.addr, align 4
  %cmp26 = icmp sgt i32 %17, 0
  br i1 %cmp26, label %if.then.27, label %if.else.37

if.then.27:                                       ; preds = %do.end.25
  %18 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %colormap28 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %18, i32 0, i32 11
  %19 = load i8*, i8** %colormap28, align 8
  %tobool29 = icmp ne i8* %19, null
  br i1 %tobool29, label %if.then.30, label %if.else.32

if.then.30:                                       ; preds = %if.then.27
  %20 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %colormap31 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %20, i32 0, i32 11
  %21 = load i8*, i8** %colormap31, align 8
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 768, i32 1, i1 false)
  br label %if.end.35

if.else.32:                                       ; preds = %if.then.27
  %call33 = call noalias i8* @g_malloc0_n(i64 768, i64 1)
  %22 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %colormap34 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %22, i32 0, i32 11
  store i8* %call33, i8** %colormap34, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.30
  %23 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %colormap36 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %23, i32 0, i32 11
  %24 = load i8*, i8** %colormap36, align 8
  %25 = load i8*, i8** %colormap.addr, align 8
  %26 = load i32, i32* %num_colors.addr, align 4
  %mul = mul nsw i32 3, %26
  %conv = sext i32 %mul to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 %conv, i32 1, i1 false)
  br label %if.end.40

if.else.37:                                       ; preds = %do.end.25
  %27 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %colormap38 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %27, i32 0, i32 11
  %28 = load i8*, i8** %colormap38, align 8
  call void @g_free(i8* %28)
  %29 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %colormap39 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %29, i32 0, i32 11
  store i8* null, i8** %colormap39, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.9, %if.else.15, %if.else.23, %if.else.37, %if.end.35
  ret void
}

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_preview_area_set_max_size(%struct._GimpPreviewArea* %area, i32 %width, i32 %height) #3 {
entry:
  %area.addr = alloca %struct._GimpPreviewArea*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPreviewArea* %area, %struct._GimpPreviewArea** %area.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %1 = bitcast %struct._GimpPreviewArea* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_preview_area_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_preview_area_set_max_size, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %width.addr, align 4
  %14 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %max_width = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %14, i32 0, i32 8
  store i32 %13, i32* %max_width, align 4
  %15 = load i32, i32* %height.addr, align 4
  %16 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %max_height = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %16, i32 0, i32 9
  store i32 %15, i32* %max_height, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_preview_area_menu_popup(%struct._GimpPreviewArea* %area, %struct._GdkEventButton* %event) #3 {
entry:
  %area.addr = alloca %struct._GimpPreviewArea*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %menu = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPreviewArea* %area, %struct._GimpPreviewArea** %area.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %1 = bitcast %struct._GimpPreviewArea* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_preview_area_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_preview_area_menu_popup, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.31

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call %struct._GtkWidget* @gtk_menu_new()
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %menu, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_menu_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkMenu*
  %16 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %17 = bitcast %struct._GimpPreviewArea* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_widget_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWidget*
  %call16 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %18)
  call void @gtk_menu_set_screen(%struct._GtkMenu* %15, %struct._GdkScreen* %call16)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_menu_shell_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call17)
  %21 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkMenuShell*
  %22 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %call19 = call %struct._GtkWidget* @gimp_preview_area_menu_new(%struct._GimpPreviewArea* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0))
  call void @gtk_menu_shell_append(%struct._GtkMenuShell* %21, %struct._GtkWidget* %call19)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_menu_shell_get_type() #7
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call20)
  %25 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkMenuShell*
  %26 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %call22 = call %struct._GtkWidget* @gimp_preview_area_menu_new(%struct._GimpPreviewArea* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0))
  call void @gtk_menu_shell_append(%struct._GtkMenuShell* %25, %struct._GtkWidget* %call22)
  %27 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %tobool23 = icmp ne %struct._GdkEventButton* %27, null
  br i1 %tobool23, label %if.then.24, label %if.else.27

if.then.24:                                       ; preds = %do.end
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_menu_get_type() #7
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call25)
  %30 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkMenu*
  %31 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %31, i32 0, i32 8
  %32 = load i32, i32* %button, align 4
  %33 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %time = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %33, i32 0, i32 3
  %34 = load i32, i32* %time, align 4
  call void @gtk_menu_popup(%struct._GtkMenu* %30, %struct._GtkWidget* null, %struct._GtkWidget* null, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)* null, i8* null, i32 %32, i32 %34)
  br label %if.end.31

if.else.27:                                       ; preds = %do.end
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_menu_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call28)
  %37 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkMenu*
  %call30 = call i32 @gtk_get_current_event_time()
  call void @gtk_menu_popup(%struct._GtkMenu* %37, %struct._GtkWidget* null, %struct._GtkWidget* null, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)* null, i8* null, i32 0, i32 %call30)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.9, %if.else.27, %if.then.24
  ret void
}

declare %struct._GtkWidget* @gtk_menu_new() #1

declare void @gtk_menu_set_screen(%struct._GtkMenu*, %struct._GdkScreen*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_menu_get_type() #2

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare void @gtk_menu_shell_append(%struct._GtkMenuShell*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_menu_shell_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_preview_area_menu_new(%struct._GimpPreviewArea* %area, i8* %property) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %area.addr = alloca %struct._GimpPreviewArea*, align 8
  %property.addr = alloca i8*, align 8
  %pspec = alloca %struct._GParamSpec*, align 8
  %enum_class = alloca %struct._GEnumClass*, align 8
  %enum_value = alloca %struct._GEnumValue*, align 8
  %menu = alloca %struct._GtkWidget*, align 8
  %item = alloca %struct._GtkWidget*, align 8
  %group = alloca %struct._GSList*, align 8
  %value = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %name = alloca i8*, align 8
  store %struct._GimpPreviewArea* %area, %struct._GimpPreviewArea** %area.addr, align 8
  store i8* %property, i8** %property.addr, align 8
  store %struct._GSList* null, %struct._GSList** %group, align 8
  %0 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %1 = bitcast %struct._GimpPreviewArea* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to %struct._GObjectClass*
  %4 = load i8*, i8** %property.addr, align 8
  %call = call %struct._GParamSpec* @g_object_class_find_property(%struct._GObjectClass* %3, i8* %4)
  store %struct._GParamSpec* %call, %struct._GParamSpec** %pspec, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %6 = bitcast %struct._GParamSpec* %5 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %6, %struct._GTypeInstance** %__inst, align 8
  %7 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %7, i64 10
  %8 = load i64, i64* %arrayidx, align 8
  store i64 %8, i64* %__t, align 8
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %9, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class1 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class1, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %11, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  %15 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %14, %15
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %17 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %16, i64 %17) #8
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %18 = load i32, i32* %__r, align 4
  store i32 %18, i32* %tmp
  %19 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %19, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_preview_area_menu_new, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %20 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %21 = bitcast %struct._GimpPreviewArea* %20 to i8*
  %22 = load i8*, i8** %property.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %21, i8* %22, i32* %value, i8* null)
  %23 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %24 = bitcast %struct._GParamSpec* %23 to %struct._GTypeInstance*
  %25 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx12 = getelementptr inbounds i64, i64* %25, i64 10
  %26 = load i64, i64* %arrayidx12, align 8
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %26)
  %27 = bitcast %struct._GTypeInstance* %call13 to %struct._GParamSpecEnum*
  %enum_class14 = getelementptr inbounds %struct._GParamSpecEnum, %struct._GParamSpecEnum* %27, i32 0, i32 1
  %28 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class14, align 8
  store %struct._GEnumClass* %28, %struct._GEnumClass** %enum_class, align 8
  %call15 = call %struct._GtkWidget* @gtk_menu_new()
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %menu, align 8
  %29 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %values = getelementptr inbounds %struct._GEnumClass, %struct._GEnumClass* %29, i32 0, i32 4
  %30 = load %struct._GEnumValue*, %struct._GEnumValue** %values, align 8
  store %struct._GEnumValue* %30, %struct._GEnumValue** %enum_value, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %31 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %value_name = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %31, i32 0, i32 1
  %32 = load i8*, i8** %value_name, align 8
  %tobool16 = icmp ne i8* %32, null
  br i1 %tobool16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %34 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %call18 = call i8* @gimp_enum_value_get_desc(%struct._GEnumClass* %33, %struct._GEnumValue* %34)
  store i8* %call18, i8** %name, align 8
  %35 = load %struct._GSList*, %struct._GSList** %group, align 8
  %36 = load i8*, i8** %name, align 8
  %call19 = call %struct._GtkWidget* @gtk_radio_menu_item_new_with_label(%struct._GSList* %35, i8* %36)
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %item, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_menu_shell_get_type() #7
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call20)
  %39 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkMenuShell*
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %item, align 8
  call void @gtk_menu_shell_append(%struct._GtkMenuShell* %39, %struct._GtkWidget* %40)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %item, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %41)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %item, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 80)
  %44 = bitcast %struct._GTypeInstance* %call22 to %struct._GObject*
  %45 = load i8*, i8** %property.addr, align 8
  call void @g_object_set_data(%struct._GObject* %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i32 0, i32 0), i8* %45)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %item, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 80)
  %48 = bitcast %struct._GTypeInstance* %call23 to %struct._GObject*
  %49 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %value24 = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %49, i32 0, i32 0
  %50 = load i32, i32* %value24, align 4
  %conv = sext i32 %50 to i64
  %51 = inttoptr i64 %conv to i8*
  call void @g_object_set_data(%struct._GObject* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i32 0, i32 0), i8* %51)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %item, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_check_menu_item_get_type() #7
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call25)
  %54 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkCheckMenuItem*
  %55 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %value27 = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %55, i32 0, i32 0
  %56 = load i32, i32* %value27, align 4
  %57 = load i32, i32* %value, align 4
  %cmp28 = icmp eq i32 %56, %57
  %conv29 = zext i1 %cmp28 to i32
  call void @gtk_check_menu_item_set_active(%struct._GtkCheckMenuItem* %54, i32 %conv29)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %item, align 8
  %59 = bitcast %struct._GtkWidget* %58 to i8*
  %60 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %61 = bitcast %struct._GimpPreviewArea* %60 to i8*
  %call30 = call i64 @g_signal_connect_data(i8* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpPreviewArea*)* @gimp_preview_area_menu_toggled to void ()*), i8* %61, void (i8*, %struct._GClosure*)* null, i32 0)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %item, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_radio_menu_item_get_type() #7
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call31)
  %64 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkRadioMenuItem*
  %call33 = call %struct._GSList* @gtk_radio_menu_item_get_group(%struct._GtkRadioMenuItem* %64)
  store %struct._GSList* %call33, %struct._GSList** %group, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %65 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %incdec.ptr = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %65, i32 1
  store %struct._GEnumValue* %incdec.ptr, %struct._GEnumValue** %enum_value, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %66 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %call34 = call i8* @g_param_spec_get_nick(%struct._GParamSpec* %66)
  %call35 = call %struct._GtkWidget* @gtk_menu_item_new_with_label(i8* %call34)
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %item, align 8
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %item, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_menu_item_get_type() #7
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call36)
  %69 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkMenuItem*
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  call void @gtk_menu_item_set_submenu(%struct._GtkMenuItem* %69, %struct._GtkWidget* %70)
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %item, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %71)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %item, align 8
  store %struct._GtkWidget* %72, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.10
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %73
}

declare void @gtk_menu_popup(%struct._GtkMenu*, %struct._GtkWidget*, %struct._GtkWidget*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, i32) #1

declare i32 @gtk_get_current_event_time() #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_preview_area_class_init(%struct._GimpPreviewAreaClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpPreviewAreaClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpPreviewAreaClass* %klass, %struct._GimpPreviewAreaClass** %klass.addr, align 8
  %0 = load %struct._GimpPreviewAreaClass*, %struct._GimpPreviewAreaClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpPreviewAreaClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpPreviewAreaClass*, %struct._GimpPreviewAreaClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpPreviewAreaClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_preview_area_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_preview_area_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_preview_area_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %9 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %size_allocate = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %9, i32 0, i32 13
  store void (%struct._GtkWidget*, %struct._GdkRectangle*)* @gimp_preview_area_size_allocate, void (%struct._GtkWidget*, %struct._GdkRectangle*)** %size_allocate, align 8
  %10 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %expose_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %10, i32 0, i32 31
  store i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @gimp_preview_area_expose, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)** %expose_event, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0)) #5
  %call4 = call i64 @gimp_check_size_get_type() #7
  %call5 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8* %call3, i8* null, i64 %call4, i32 1, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 1, %struct._GParamSpec* %call5)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0)) #5
  %call7 = call i64 @gimp_check_type_get_type() #7
  %call8 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8* %call6, i8* null, i64 %call7, i32 1, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 2, %struct._GParamSpec* %call8)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_preview_area_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %area = alloca %struct._GimpPreviewArea*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_area_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPreviewArea*
  store %struct._GimpPreviewArea* %2, %struct._GimpPreviewArea** %area, align 8
  %3 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %buf = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %3, i32 0, i32 10
  %4 = load i8*, i8** %buf, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %buf2 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %5, i32 0, i32 10
  %6 = load i8*, i8** %buf2, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %buf3 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %7, i32 0, i32 10
  store i8* null, i8** %buf3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %colormap = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %8, i32 0, i32 11
  %9 = load i8*, i8** %colormap, align 8
  %tobool4 = icmp ne i8* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %colormap6 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %10, i32 0, i32 11
  %11 = load i8*, i8** %colormap6, align 8
  call void @g_free(i8* %11)
  %12 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %colormap7 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %12, i32 0, i32 11
  store i8* null, i8** %colormap7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %13 = load i8*, i8** @gimp_preview_area_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call9 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 80)
  %15 = bitcast %struct._GTypeClass* %call9 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 6
  %16 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %17 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %16(%struct._GObject* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_preview_area_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %area = alloca %struct._GimpPreviewArea*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_area_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPreviewArea*
  store %struct._GimpPreviewArea* %2, %struct._GimpPreviewArea** %area, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_enum(%struct._GValue* %4)
  %5 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %check_size = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %5, i32 0, i32 1
  store i32 %call2, i32* %check_size, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i32 @g_value_get_enum(%struct._GValue* %6)
  %7 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %check_type = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %7, i32 0, i32 2
  store i32 %call4, i32* %check_type, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %8, %struct._GObject** %_glib__object, align 8
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %9, %struct._GParamSpec** %_glib__pspec, align 8
  %10 = load i32, i32* %property_id.addr, align 4
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
  %call5 = call i8* @g_type_name(i64 %17)
  %18 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %19 = bitcast %struct._GObject* %18 to %struct._GTypeInstance*
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type7 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type7, align 8
  %call8 = call i8* @g_type_name(i64 %21)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i32 169, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 %11, i8* %13, i8* %call5, i8* %call8)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_preview_area_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %area = alloca %struct._GimpPreviewArea*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_area_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPreviewArea*
  store %struct._GimpPreviewArea* %2, %struct._GimpPreviewArea** %area, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %check_size = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %5, i32 0, i32 1
  %6 = load i32, i32* %check_size, align 4
  call void @g_value_set_enum(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %check_type = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %8, i32 0, i32 2
  %9 = load i32, i32* %check_type, align 4
  call void @g_value_set_enum(%struct._GValue* %7, i32 %9)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %10 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %10, %struct._GObject** %_glib__object, align 8
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %11, %struct._GParamSpec** %_glib__pspec, align 8
  %12 = load i32, i32* %property_id.addr, align 4
  store i32 %12, i32* %_glib__property_id, align 4
  %13 = load i32, i32* %_glib__property_id, align 4
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %14, i32 0, i32 1
  %15 = load i8*, i8** %name, align 8
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %17 = bitcast %struct._GParamSpec* %16 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %19)
  %20 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %21 = bitcast %struct._GObject* %20 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %23)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i32 192, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 %13, i8* %15, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_preview_area_size_allocate(%struct._GtkWidget* %widget, %struct._GdkRectangle* %allocation) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %area = alloca %struct._GimpPreviewArea*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_area_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPreviewArea*
  store %struct._GimpPreviewArea* %2, %struct._GimpPreviewArea** %area, align 8
  %3 = load i8*, i8** @gimp_preview_area_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gtk_widget_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GtkWidgetClass*
  %size_allocate = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %5, i32 0, i32 13
  %6 = load void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)** %size_allocate, align 8
  %tobool = icmp ne void (%struct._GtkWidget*, %struct._GdkRectangle*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_preview_area_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call4 = call i64 @gtk_widget_get_type() #7
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 %call4)
  %9 = bitcast %struct._GTypeClass* %call5 to %struct._GtkWidgetClass*
  %size_allocate6 = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %9, i32 0, i32 13
  %10 = load void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)** %size_allocate6, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %12 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  call void %10(%struct._GtkWidget* %11, %struct._GdkRectangle* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %max_width = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %13, i32 0, i32 8
  %14 = load i32, i32* %max_width, align 4
  %cmp = icmp sgt i32 %14, 0
  br i1 %cmp, label %cond.true, label %cond.false.13

cond.true:                                        ; preds = %if.end
  %15 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width7 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %15, i32 0, i32 2
  %16 = load i32, i32* %width7, align 4
  %17 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %max_width8 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %17, i32 0, i32 8
  %18 = load i32, i32* %max_width8, align 4
  %cmp9 = icmp slt i32 %16, %18
  br i1 %cmp9, label %cond.true.10, label %cond.false

cond.true.10:                                     ; preds = %cond.true
  %19 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width11 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %19, i32 0, i32 2
  %20 = load i32, i32* %width11, align 4
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %21 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %max_width12 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %21, i32 0, i32 8
  %22 = load i32, i32* %max_width12, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.10
  %cond = phi i32 [ %20, %cond.true.10 ], [ %22, %cond.false ]
  br label %cond.end.15

cond.false.13:                                    ; preds = %if.end
  %23 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width14 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %23, i32 0, i32 2
  %24 = load i32, i32* %width14, align 4
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.13, %cond.end
  %cond16 = phi i32 [ %cond, %cond.end ], [ %24, %cond.false.13 ]
  store i32 %cond16, i32* %width, align 4
  %25 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %max_height = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %25, i32 0, i32 9
  %26 = load i32, i32* %max_height, align 4
  %cmp17 = icmp sgt i32 %26, 0
  br i1 %cmp17, label %cond.true.18, label %cond.false.28

cond.true.18:                                     ; preds = %cond.end.15
  %27 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height19 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %27, i32 0, i32 3
  %28 = load i32, i32* %height19, align 4
  %29 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %max_height20 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %29, i32 0, i32 9
  %30 = load i32, i32* %max_height20, align 4
  %cmp21 = icmp slt i32 %28, %30
  br i1 %cmp21, label %cond.true.22, label %cond.false.24

cond.true.22:                                     ; preds = %cond.true.18
  %31 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height23 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %31, i32 0, i32 3
  %32 = load i32, i32* %height23, align 4
  br label %cond.end.26

cond.false.24:                                    ; preds = %cond.true.18
  %33 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %max_height25 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %33, i32 0, i32 9
  %34 = load i32, i32* %max_height25, align 4
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.24, %cond.true.22
  %cond27 = phi i32 [ %32, %cond.true.22 ], [ %34, %cond.false.24 ]
  br label %cond.end.30

cond.false.28:                                    ; preds = %cond.end.15
  %35 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height29 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %35, i32 0, i32 3
  %36 = load i32, i32* %height29, align 4
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.28, %cond.end.26
  %cond31 = phi i32 [ %cond27, %cond.end.26 ], [ %36, %cond.false.28 ]
  store i32 %cond31, i32* %height, align 4
  %37 = load i32, i32* %width, align 4
  %38 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %width32 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %38, i32 0, i32 3
  %39 = load i32, i32* %width32, align 4
  %cmp33 = icmp ne i32 %37, %39
  br i1 %cmp33, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.30
  %40 = load i32, i32* %height, align 4
  %41 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %height34 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %41, i32 0, i32 4
  %42 = load i32, i32* %height34, align 4
  %cmp35 = icmp ne i32 %40, %42
  br i1 %cmp35, label %if.then.36, label %if.end.44

if.then.36:                                       ; preds = %lor.lhs.false, %cond.end.30
  %43 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %buf = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %43, i32 0, i32 10
  %44 = load i8*, i8** %buf, align 8
  %tobool37 = icmp ne i8* %44, null
  br i1 %tobool37, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %if.then.36
  %45 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %buf39 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %45, i32 0, i32 10
  %46 = load i8*, i8** %buf39, align 8
  call void @g_free(i8* %46)
  %47 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %buf40 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %47, i32 0, i32 10
  store i8* null, i8** %buf40, align 8
  %48 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %rowstride = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %48, i32 0, i32 5
  store i32 0, i32* %rowstride, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.38, %if.then.36
  %49 = load i32, i32* %width, align 4
  %50 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %width42 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %50, i32 0, i32 3
  store i32 %49, i32* %width42, align 4
  %51 = load i32, i32* %height, align 4
  %52 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %height43 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %52, i32 0, i32 4
  store i32 %51, i32* %height43, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.41, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_preview_area_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %area = alloca %struct._GimpPreviewArea*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %rect = alloca %struct._GdkRectangle, align 4
  %cr = alloca %struct._cairo*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_area_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPreviewArea*
  store %struct._GimpPreviewArea* %2, %struct._GimpPreviewArea** %area, align 8
  %3 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %buf = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %3, i32 0, i32 10
  %4 = load i8*, i8** %buf, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %5, %struct._GdkRectangle* %allocation)
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %6 = load i32, i32* %width, align 4
  %7 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %width2 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %7, i32 0, i32 3
  %8 = load i32, i32* %width2, align 4
  %sub = sub nsw i32 %6, %8
  %div = sdiv i32 %sub, 2
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  store i32 %div, i32* %x, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %9 = load i32, i32* %height, align 4
  %10 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %height3 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %10, i32 0, i32 4
  %11 = load i32, i32* %height3, align 4
  %sub4 = sub nsw i32 %9, %11
  %div5 = sdiv i32 %sub4, 2
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  store i32 %div5, i32* %y, align 4
  %12 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %width6 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %12, i32 0, i32 3
  %13 = load i32, i32* %width6, align 4
  %width7 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  store i32 %13, i32* %width7, align 4
  %14 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %height8 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %14, i32 0, i32 4
  %15 = load i32, i32* %height8, align 4
  %height9 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  store i32 %15, i32* %height9, align 4
  %16 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %buf10 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %16, i32 0, i32 10
  %17 = load i8*, i8** %buf10, align 8
  %width11 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  %18 = load i32, i32* %width11, align 4
  %height12 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  %19 = load i32, i32* %height12, align 4
  %20 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %rowstride = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %20, i32 0, i32 5
  %21 = load i32, i32* %rowstride, align 4
  %call13 = call %struct._GdkPixbuf* @gdk_pixbuf_new_from_data(i8* %17, i32 0, i32 0, i32 8, i32 %18, i32 %19, i32 %21, void (i8*, i8*)* null, i8* null)
  store %struct._GdkPixbuf* %call13, %struct._GdkPixbuf** %pixbuf, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call14 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %22)
  %call15 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call14)
  store %struct._cairo* %call15, %struct._cairo** %cr, align 8
  %23 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %24 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %24, i32 0, i32 4
  %25 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_cairo_region(%struct._cairo* %23, %struct._GdkRegion* %25)
  %26 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %26)
  %27 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %28 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %x16 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %29 = load i32, i32* %x16, align 4
  %conv = sitofp i32 %29 to double
  %y17 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %30 = load i32, i32* %y17, align 4
  %conv18 = sitofp i32 %30 to double
  call void @gdk_cairo_set_source_pixbuf(%struct._cairo* %27, %struct._GdkPixbuf* %28, double %conv, double %conv18)
  %31 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_paint(%struct._cairo* %31)
  %32 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %32)
  %33 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %34 = bitcast %struct._GdkPixbuf* %33 to i8*
  call void @g_object_unref(i8* %34)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %35 = load i32, i32* %retval
  ret i32 %35
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #6

; Function Attrs: nounwind readnone
declare i64 @gimp_check_size_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_check_type_get_type() #2

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
  call void @g_logv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare %struct._GdkPixbuf* @gdk_pixbuf_new_from_data(i8*, i32, i32, i32, i32, i32, i32, void (i8*, i8*)*, i8*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gdk_cairo_region(%struct._cairo*, %struct._GdkRegion*) #1

declare void @cairo_clip(%struct._cairo*) #1

declare void @gdk_cairo_set_source_pixbuf(%struct._cairo*, %struct._GdkPixbuf*, double, double) #1

declare void @cairo_paint(%struct._cairo*) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare void @g_object_unref(i8*) #1

declare void @g_log(i8*, i32, i8*, ...) #1

declare void @gtk_widget_queue_draw_area(%struct._GtkWidget*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @g_object_class_find_property(%struct._GObjectClass*, i8*) #1

declare void @g_object_get(i8*, i8*, ...) #1

declare i8* @gimp_enum_value_get_desc(%struct._GEnumClass*, %struct._GEnumValue*) #1

declare %struct._GtkWidget* @gtk_radio_menu_item_new_with_label(%struct._GSList*, i8*) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare void @gtk_check_menu_item_set_active(%struct._GtkCheckMenuItem*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_check_menu_item_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_preview_area_menu_toggled(%struct._GtkWidget* %item, %struct._GimpPreviewArea* %area) #3 {
entry:
  %item.addr = alloca %struct._GtkWidget*, align 8
  %area.addr = alloca %struct._GimpPreviewArea*, align 8
  %active = alloca i32, align 4
  %name = alloca i8*, align 8
  %value = alloca i32, align 4
  store %struct._GtkWidget* %item, %struct._GtkWidget** %item.addr, align 8
  store %struct._GimpPreviewArea* %area, %struct._GimpPreviewArea** %area.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %item.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_check_menu_item_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkCheckMenuItem*
  %call2 = call i32 @gtk_check_menu_item_get_active(%struct._GtkCheckMenuItem* %2)
  store i32 %call2, i32* %active, align 4
  %3 = load i32, i32* %active, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %item.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %call4 = call i8* @g_object_get_data(%struct._GObject* %6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i32 0, i32 0))
  store i8* %call4, i8** %name, align 8
  %7 = load i8*, i8** %name, align 8
  %tobool5 = icmp ne i8* %7, null
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %item.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 80)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GObject*
  %call8 = call i8* @g_object_get_data(%struct._GObject* %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i32 0, i32 0))
  %11 = ptrtoint i8* %call8 to i64
  %conv = trunc i64 %11 to i32
  store i32 %conv, i32* %value, align 4
  %12 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %13 = bitcast %struct._GimpPreviewArea* %12 to i8*
  %14 = load i8*, i8** %name, align 8
  %15 = load i32, i32* %value, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %13, i8* %14, i32 %15, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  ret void
}

declare %struct._GSList* @gtk_radio_menu_item_get_group(%struct._GtkRadioMenuItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_menu_item_get_type() #2

declare %struct._GtkWidget* @gtk_menu_item_new_with_label(i8*) #1

declare i8* @g_param_spec_get_nick(%struct._GParamSpec*) #1

declare void @gtk_menu_item_set_submenu(%struct._GtkMenuItem*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_menu_item_get_type() #2

declare i32 @gtk_check_menu_item_get_active(%struct._GtkCheckMenuItem*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare void @g_object_set(i8*, i8*, ...) #1

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
