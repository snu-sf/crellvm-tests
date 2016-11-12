; ModuleID = './libgimpwidgets/gimppixmap.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpPixmapClass = type { %struct._GtkImageClass, void ()*, void ()*, void ()*, void ()* }
%struct._GtkImageClass = type { %struct._GtkMiscClass, void ()*, void ()*, void ()*, void ()* }
%struct._GtkMiscClass = type { %struct._GtkWidgetClass }
%struct._GtkWidgetClass = type { %struct._GtkObjectClass, i32, i32, void (%struct._GtkWidget*, i32, %struct._GParamSpec**)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkRequisition*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GParamSpec*)*, i32 (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %union._GdkEvent*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventScroll*)*, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProperty*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventVisibility*)*, i32 (%struct._GtkWidget*, %struct._GdkEventClient*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventWindowState*)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)*, i32 (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, %struct._AtkObject* (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GdkScreen*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkEventGrabBroken*)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32, i32, i32, %struct._GtkTooltip*)*, void ()*, void ()*, void ()* }
%struct._GtkObjectClass = type { %struct._GObjectClass, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon.0] }
%union.anon.0 = type { i64 }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GtkArg = type { i64, i8*, %union.anon.1 }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { void ()*, i8* }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkFont = type { i32, i32, i32 }
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
%struct._GdkEventClient = type { i32, %struct._GdkDrawable*, i8, %struct._GdkAtom*, i16, %union.anon.2 }
%union.anon.2 = type { [5 x i64] }
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
%struct._GimpPixmap = type { %struct._GtkImage, i8** }
%struct._GtkImage = type { %struct._GtkMisc, i32, %union.anon, %struct._GdkDrawable*, i32 }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%union.anon = type { %struct._GtkImageAnimationData }
%struct._GtkImageAnimationData = type { %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimationIter*, i32 }
%struct._GdkPixbufAnimation = type opaque
%struct._GdkPixbufAnimationIter = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_pixmap_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"GimpPixmap\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_pixmap_set = private unnamed_addr constant [16 x i8] c"gimp_pixmap_set\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"GIMP_IS_PIXMAP (pixmap)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"%s: passed pointer is no XPM data\00", align 1
@gimp_pixmap_parent_class = internal global i8* null, align 8
@GimpPixmap_private_offset = internal global i32 0, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_pixmap_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_pixmap_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_pixmap_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_image_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 784, void (i8*, i8*)* bitcast (void (i8*)* @gimp_pixmap_class_intern_init to void (i8*, i8*)*), i32 168, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpPixmap*)* @gimp_pixmap_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_pixmap_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_pixmap_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_image_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_pixmap_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_pixmap_parent_class, align 8
  %1 = load i32, i32* @GimpPixmap_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpPixmap_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpPixmapClass*
  call void @gimp_pixmap_class_init(%struct._GimpPixmapClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_pixmap_init(%struct._GimpPixmap* %pixmap) #3 {
entry:
  %pixmap.addr = alloca %struct._GimpPixmap*, align 8
  store %struct._GimpPixmap* %pixmap, %struct._GimpPixmap** %pixmap.addr, align 8
  %0 = load %struct._GimpPixmap*, %struct._GimpPixmap** %pixmap.addr, align 8
  %xpm_data = getelementptr inbounds %struct._GimpPixmap, %struct._GimpPixmap* %0, i32 0, i32 1
  store i8** null, i8*** %xpm_data, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_pixmap_new(i8** %xpm_data) #3 {
entry:
  %xpm_data.addr = alloca i8**, align 8
  %pixmap = alloca %struct._GimpPixmap*, align 8
  store i8** %xpm_data, i8*** %xpm_data.addr, align 8
  %call = call i64 @gimp_pixmap_get_type() #7
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GimpPixmap*
  store %struct._GimpPixmap* %0, %struct._GimpPixmap** %pixmap, align 8
  %1 = load %struct._GimpPixmap*, %struct._GimpPixmap** %pixmap, align 8
  %2 = load i8**, i8*** %xpm_data.addr, align 8
  call void @gimp_pixmap_set(%struct._GimpPixmap* %1, i8** %2)
  %3 = load %struct._GimpPixmap*, %struct._GimpPixmap** %pixmap, align 8
  %4 = bitcast %struct._GimpPixmap* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_widget_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWidget*
  ret %struct._GtkWidget* %5
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_pixmap_set(%struct._GimpPixmap* %pixmap, i8** %xpm_data) #3 {
entry:
  %pixmap.addr = alloca %struct._GimpPixmap*, align 8
  %xpm_data.addr = alloca i8**, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %width25 = alloca i32, align 4
  %height27 = alloca i32, align 4
  %xpad = alloca i32, align 4
  %ypad = alloca i32, align 4
  store %struct._GimpPixmap* %pixmap, %struct._GimpPixmap** %pixmap.addr, align 8
  store i8** %xpm_data, i8*** %xpm_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPixmap*, %struct._GimpPixmap** %pixmap.addr, align 8
  %1 = bitcast %struct._GimpPixmap* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_pixmap_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_pixmap_set, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.49

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i8**, i8*** %xpm_data.addr, align 8
  %14 = load %struct._GimpPixmap*, %struct._GimpPixmap** %pixmap.addr, align 8
  %xpm_data11 = getelementptr inbounds %struct._GimpPixmap, %struct._GimpPixmap* %14, i32 0, i32 1
  store i8** %13, i8*** %xpm_data11, align 8
  %15 = load %struct._GimpPixmap*, %struct._GimpPixmap** %pixmap.addr, align 8
  %16 = bitcast %struct._GimpPixmap* %15 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_widget_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call12)
  %17 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkWidget*
  %requisition = getelementptr inbounds %struct._GtkWidget, %struct._GtkWidget* %17, i32 0, i32 6
  %width = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 0
  store i32 0, i32* %width, align 4
  %18 = load %struct._GimpPixmap*, %struct._GimpPixmap** %pixmap.addr, align 8
  %19 = bitcast %struct._GimpPixmap* %18 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_widget_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call14)
  %20 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWidget*
  %requisition16 = getelementptr inbounds %struct._GtkWidget, %struct._GtkWidget* %20, i32 0, i32 6
  %height = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition16, i32 0, i32 1
  store i32 0, i32* %height, align 4
  %21 = load %struct._GimpPixmap*, %struct._GimpPixmap** %pixmap.addr, align 8
  %22 = bitcast %struct._GimpPixmap* %21 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_widget_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call17)
  %23 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkWidget*
  %call19 = call i32 @gtk_widget_get_realized(%struct._GtkWidget* %23)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.else.48, label %if.then.21

if.then.21:                                       ; preds = %do.end
  %24 = load i8**, i8*** %xpm_data.addr, align 8
  %tobool22 = icmp ne i8** %24, null
  br i1 %tobool22, label %if.then.23, label %if.end.47

if.then.23:                                       ; preds = %if.then.21
  %25 = load i8**, i8*** %xpm_data.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %25, i64 0
  %26 = load i8*, i8** %arrayidx, align 8
  %call28 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32* %width25, i32* %height27) #6
  %cmp29 = icmp ne i32 %call28, 2
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.then.23
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_pixmap_set, i32 0, i32 0))
  br label %if.end.46

if.else.31:                                       ; preds = %if.then.23
  %27 = load %struct._GimpPixmap*, %struct._GimpPixmap** %pixmap.addr, align 8
  %28 = bitcast %struct._GimpPixmap* %27 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_misc_get_type() #7
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call34)
  %29 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkMisc*
  call void @gtk_misc_get_padding(%struct._GtkMisc* %29, i32* %xpad, i32* %ypad)
  %30 = load i32, i32* %width25, align 4
  %31 = load i32, i32* %xpad, align 4
  %mul = mul nsw i32 %31, 2
  %add = add nsw i32 %30, %mul
  %32 = load %struct._GimpPixmap*, %struct._GimpPixmap** %pixmap.addr, align 8
  %33 = bitcast %struct._GimpPixmap* %32 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_widget_get_type() #7
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call36)
  %34 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkWidget*
  %requisition38 = getelementptr inbounds %struct._GtkWidget, %struct._GtkWidget* %34, i32 0, i32 6
  %width39 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition38, i32 0, i32 0
  store i32 %add, i32* %width39, align 4
  %35 = load i32, i32* %height27, align 4
  %36 = load i32, i32* %ypad, align 4
  %mul40 = mul nsw i32 %36, 2
  %add41 = add nsw i32 %35, %mul40
  %37 = load %struct._GimpPixmap*, %struct._GimpPixmap** %pixmap.addr, align 8
  %38 = bitcast %struct._GimpPixmap* %37 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_widget_get_type() #7
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call42)
  %39 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkWidget*
  %requisition44 = getelementptr inbounds %struct._GtkWidget, %struct._GtkWidget* %39, i32 0, i32 6
  %height45 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition44, i32 0, i32 1
  store i32 %add41, i32* %height45, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.31, %if.then.30
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.21
  br label %if.end.49

if.else.48:                                       ; preds = %do.end
  %40 = load %struct._GimpPixmap*, %struct._GimpPixmap** %pixmap.addr, align 8
  call void @gimp_pixmap_create_from_xpm_d(%struct._GimpPixmap* %40)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.9, %if.else.48, %if.end.47
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @gtk_widget_get_realized(%struct._GtkWidget*) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #5

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

declare void @gtk_misc_get_padding(%struct._GtkMisc*, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_pixmap_create_from_xpm_d(%struct._GimpPixmap* %pixmap) #3 {
entry:
  %pixmap.addr = alloca %struct._GimpPixmap*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %gdk_pixmap = alloca %struct._GdkDrawable*, align 8
  %mask = alloca %struct._GdkDrawable*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  store %struct._GimpPixmap* %pixmap, %struct._GimpPixmap** %pixmap.addr, align 8
  store %struct._GdkDrawable* null, %struct._GdkDrawable** %gdk_pixmap, align 8
  store %struct._GdkDrawable* null, %struct._GdkDrawable** %mask, align 8
  %0 = load %struct._GimpPixmap*, %struct._GimpPixmap** %pixmap.addr, align 8
  %xpm_data = getelementptr inbounds %struct._GimpPixmap, %struct._GimpPixmap* %0, i32 0, i32 1
  %1 = load i8**, i8*** %xpm_data, align 8
  %tobool = icmp ne i8** %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpPixmap*, %struct._GimpPixmap** %pixmap.addr, align 8
  %3 = bitcast %struct._GimpPixmap* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %4, %struct._GtkWidget** %widget, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call2 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %5)
  store %struct._GtkStyle* %call2, %struct._GtkStyle** %style, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call3 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %6)
  %7 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %bg = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %7, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %bg, i32 0, i64 0
  %8 = load %struct._GimpPixmap*, %struct._GimpPixmap** %pixmap.addr, align 8
  %xpm_data4 = getelementptr inbounds %struct._GimpPixmap, %struct._GimpPixmap* %8, i32 0, i32 1
  %9 = load i8**, i8*** %xpm_data4, align 8
  %call5 = call %struct._GdkDrawable* @gdk_pixmap_create_from_xpm_d(%struct._GdkDrawable* %call3, %struct._GdkDrawable** %mask, %struct._GdkColor* %arrayidx, i8** %9)
  store %struct._GdkDrawable* %call5, %struct._GdkDrawable** %gdk_pixmap, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpPixmap*, %struct._GimpPixmap** %pixmap.addr, align 8
  %11 = bitcast %struct._GimpPixmap* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_image_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkImage*
  %13 = load %struct._GdkDrawable*, %struct._GdkDrawable** %gdk_pixmap, align 8
  %14 = load %struct._GdkDrawable*, %struct._GdkDrawable** %mask, align 8
  call void @gtk_image_set_from_pixmap(%struct._GtkImage* %12, %struct._GdkDrawable* %13, %struct._GdkDrawable* %14)
  %15 = load %struct._GdkDrawable*, %struct._GdkDrawable** %gdk_pixmap, align 8
  %tobool8 = icmp ne %struct._GdkDrawable* %15, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %16 = load %struct._GdkDrawable*, %struct._GdkDrawable** %gdk_pixmap, align 8
  %17 = bitcast %struct._GdkDrawable* %16 to i8*
  call void @g_object_unref(i8* %17)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  %18 = load %struct._GdkDrawable*, %struct._GdkDrawable** %mask, align 8
  %tobool11 = icmp ne %struct._GdkDrawable* %18, null
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  %19 = load %struct._GdkDrawable*, %struct._GdkDrawable** %mask, align 8
  %20 = bitcast %struct._GdkDrawable* %19 to i8*
  call void @g_object_unref(i8* %20)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.10
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_pixmap_class_init(%struct._GimpPixmapClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpPixmapClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpPixmapClass* %klass, %struct._GimpPixmapClass** %klass.addr, align 8
  %0 = load %struct._GimpPixmapClass*, %struct._GimpPixmapClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpPixmapClass* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %2, %struct._GtkWidgetClass** %widget_class, align 8
  %3 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %realize = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %3, i32 0, i32 10
  store void (%struct._GtkWidget*)* @gimp_pixmap_realize, void (%struct._GtkWidget*)** %realize, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_pixmap_realize(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load i8*, i8** @gimp_pixmap_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkWidgetClass*
  %realize = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %2, i32 0, i32 10
  %3 = load void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)** %realize, align 8
  %tobool = icmp ne void (%struct._GtkWidget*)* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** @gimp_pixmap_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call2 = call i64 @gtk_widget_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 %call2)
  %6 = bitcast %struct._GTypeClass* %call3 to %struct._GtkWidgetClass*
  %realize4 = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %6, i32 0, i32 10
  %7 = load void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)** %realize4, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void %7(%struct._GtkWidget* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_pixmap_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpPixmap*
  call void @gimp_pixmap_create_from_xpm_d(%struct._GimpPixmap* %11)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare %struct._GdkDrawable* @gdk_pixmap_create_from_xpm_d(%struct._GdkDrawable*, %struct._GdkDrawable**, %struct._GdkColor*, i8**) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gtk_image_set_from_pixmap(%struct._GtkImage*, %struct._GdkDrawable*, %struct._GdkDrawable*) #1

declare void @g_object_unref(i8*) #1

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
