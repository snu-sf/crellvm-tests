; ModuleID = './app/widgets/gimpdasheditor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpDashEditorClass = type { %struct._GtkDrawingAreaClass }
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
%struct._GimpDashEditor = type { %struct._GtkDrawingArea, %struct._GimpStrokeOptions*, double, i32, i32*, i32, i32, i32, i32, i32, i32 }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GimpStrokeOptions = type { %struct._GimpFillOptions }
%struct._GimpFillOptions = type { %struct._GimpContext }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
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
%struct._cairo = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_dash_editor_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpDashEditor\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_dash_editor_new = private unnamed_addr constant [21 x i8] c"gimp_dash_editor_new\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"GIMP_IS_STROKE_OPTIONS (stroke_options)\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"stroke-options\00", align 1
@__func__.gimp_dash_editor_shift_right = private unnamed_addr constant [29 x i8] c"gimp_dash_editor_shift_right\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"GIMP_IS_DASH_EDITOR (editor)\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"editor->n_segments > 0\00", align 1
@__func__.gimp_dash_editor_shift_left = private unnamed_addr constant [28 x i8] c"gimp_dash_editor_shift_left\00", align 1
@gimp_dash_editor_parent_class = internal global i8* null, align 8
@GimpDashEditor_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"n-segments\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"dash-length\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"gimpdasheditor.c\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@__func__.gimp_dash_editor_set_property = private unnamed_addr constant [30 x i8] c"gimp_dash_editor_set_property\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"editor->stroke_options == NULL\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"notify::dash-info\00", align 1
@__func__.update_segments_from_options = private unnamed_addr constant [29 x i8] c"update_segments_from_options\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"GIMP_IS_STROKE_OPTIONS (editor->stroke_options)\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_dash_editor_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_dash_editor_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_dash_editor_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_drawing_area_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 752, void (i8*, i8*)* bitcast (void (i8*)* @gimp_dash_editor_class_intern_init to void (i8*, i8*)*), i32 160, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDashEditor*)* @gimp_dash_editor_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_dash_editor_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_dash_editor_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_drawing_area_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dash_editor_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_dash_editor_parent_class, align 8
  %1 = load i32, i32* @GimpDashEditor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDashEditor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDashEditorClass*
  call void @gimp_dash_editor_class_init(%struct._GimpDashEditorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dash_editor_init(%struct._GimpDashEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpDashEditor*, align 8
  store %struct._GimpDashEditor* %editor, %struct._GimpDashEditor** %editor.addr, align 8
  %0 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %segments = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %0, i32 0, i32 4
  store i32* null, i32** %segments, align 8
  %1 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %block_width = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %1, i32 0, i32 7
  store i32 6, i32* %block_width, align 4
  %2 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %block_height = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %2, i32 0, i32 8
  store i32 6, i32* %block_height, align 4
  %3 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %edit_mode = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %3, i32 0, i32 9
  store i32 1, i32* %edit_mode, align 4
  %4 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %edit_button_x0 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %4, i32 0, i32 10
  store i32 0, i32* %edit_button_x0, align 4
  %5 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %6 = bitcast %struct._GimpDashEditor* %5 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call)
  %7 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_widget_add_events(%struct._GtkWidget* %7, i32 800)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_dash_editor_new(%struct._GimpStrokeOptions* %stroke_options) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %stroke_options.addr = alloca %struct._GimpStrokeOptions*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStrokeOptions* %stroke_options, %struct._GimpStrokeOptions** %stroke_options.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %stroke_options.addr, align 8
  %1 = bitcast %struct._GimpStrokeOptions* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_options_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_dash_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_dash_editor_get_type() #6
  %13 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %stroke_options.addr, align 8
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), %struct._GimpStrokeOptions* %13, i8* null)
  %14 = bitcast i8* %call12 to %struct._GtkWidget*
  store %struct._GtkWidget* %14, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %15
}

; Function Attrs: nounwind readnone
declare i64 @gimp_stroke_options_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_dash_editor_shift_right(%struct._GimpDashEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpDashEditor*, align 8
  %swap = alloca i32, align 4
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDashEditor* %editor, %struct._GimpDashEditor** %editor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpDashEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dash_editor_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_dash_editor_shift_right, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %n_segments = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %13, i32 0, i32 3
  %14 = load i32, i32* %n_segments, align 4
  %cmp12 = icmp sgt i32 %14, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_dash_editor_shift_right, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %15 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %n_segments17 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %15, i32 0, i32 3
  %16 = load i32, i32* %n_segments17, align 4
  %sub = sub nsw i32 %16, 1
  %idxprom = sext i32 %sub to i64
  %17 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %segments = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %17, i32 0, i32 4
  %18 = load i32*, i32** %segments, align 8
  %arrayidx = getelementptr inbounds i32, i32* %18, i64 %idxprom
  %19 = load i32, i32* %arrayidx, align 4
  store i32 %19, i32* %swap, align 4
  %20 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %n_segments18 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %20, i32 0, i32 3
  %21 = load i32, i32* %n_segments18, align 4
  %sub19 = sub nsw i32 %21, 1
  store i32 %sub19, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.16
  %22 = load i32, i32* %i, align 4
  %cmp20 = icmp sgt i32 %22, 0
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %i, align 4
  %sub21 = sub nsw i32 %23, 1
  %idxprom22 = sext i32 %sub21 to i64
  %24 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %segments23 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %24, i32 0, i32 4
  %25 = load i32*, i32** %segments23, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %25, i64 %idxprom22
  %26 = load i32, i32* %arrayidx24, align 4
  %27 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %27 to i64
  %28 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %segments26 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %28, i32 0, i32 4
  %29 = load i32*, i32** %segments26, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %29, i64 %idxprom25
  store i32 %26, i32* %arrayidx27, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %swap, align 4
  %32 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %segments28 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %32, i32 0, i32 4
  %33 = load i32*, i32** %segments28, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %31, i32* %arrayidx29, align 4
  %34 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  call void @update_options_from_segments(%struct._GimpDashEditor* %34)
  br label %return

return:                                           ; preds = %for.end, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @update_options_from_segments(%struct._GimpDashEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpDashEditor*, align 8
  %pattern = alloca %struct._GArray*, align 8
  store %struct._GimpDashEditor* %editor, %struct._GimpDashEditor** %editor.addr, align 8
  %0 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %segments = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %0, i32 0, i32 4
  %1 = load i32*, i32** %segments, align 8
  %2 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %n_segments = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %2, i32 0, i32 3
  %3 = load i32, i32* %n_segments, align 4
  %4 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %dash_length = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %4, i32 0, i32 2
  %5 = load double, double* %dash_length, align 8
  %call = call %struct._GArray* @gimp_dash_pattern_new_from_segments(i32* %1, i32 %3, double %5)
  store %struct._GArray* %call, %struct._GArray** %pattern, align 8
  %6 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %stroke_options = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %6, i32 0, i32 1
  %7 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %stroke_options, align 8
  %8 = load %struct._GArray*, %struct._GArray** %pattern, align 8
  call void @gimp_stroke_options_take_dash_pattern(%struct._GimpStrokeOptions* %7, i32 0, %struct._GArray* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_dash_editor_shift_left(%struct._GimpDashEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpDashEditor*, align 8
  %swap = alloca i32, align 4
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDashEditor* %editor, %struct._GimpDashEditor** %editor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpDashEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dash_editor_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_dash_editor_shift_left, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %n_segments = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %13, i32 0, i32 3
  %14 = load i32, i32* %n_segments, align 4
  %cmp12 = icmp sgt i32 %14, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_dash_editor_shift_left, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %15 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %segments = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %15, i32 0, i32 4
  %16 = load i32*, i32** %segments, align 8
  %arrayidx = getelementptr inbounds i32, i32* %16, i64 0
  %17 = load i32, i32* %arrayidx, align 4
  store i32 %17, i32* %swap, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.16
  %18 = load i32, i32* %i, align 4
  %19 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %n_segments17 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %19, i32 0, i32 3
  %20 = load i32, i32* %n_segments17, align 4
  %cmp18 = icmp slt i32 %18, %20
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %segments19 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %22, i32 0, i32 4
  %23 = load i32*, i32** %segments19, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %23, i64 %idxprom
  %24 = load i32, i32* %arrayidx20, align 4
  %25 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %25, 1
  %idxprom21 = sext i32 %sub to i64
  %26 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %segments22 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %26, i32 0, i32 4
  %27 = load i32*, i32** %segments22, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %27, i64 %idxprom21
  store i32 %24, i32* %arrayidx23, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %swap, align 4
  %30 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %n_segments24 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %30, i32 0, i32 3
  %31 = load i32, i32* %n_segments24, align 4
  %sub25 = sub nsw i32 %31, 1
  %idxprom26 = sext i32 %sub25 to i64
  %32 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %segments27 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %32, i32 0, i32 4
  %33 = load i32*, i32** %segments27, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %33, i64 %idxprom26
  store i32 %29, i32* %arrayidx28, align 4
  %34 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  call void @update_options_from_segments(%struct._GimpDashEditor* %34)
  br label %return

return:                                           ; preds = %for.end, %if.else.14, %if.else.9
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dash_editor_class_init(%struct._GimpDashEditorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpDashEditorClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpDashEditorClass* %klass, %struct._GimpDashEditorClass** %klass.addr, align 8
  %0 = load %struct._GimpDashEditorClass*, %struct._GimpDashEditorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDashEditorClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpDashEditorClass*, %struct._GimpDashEditorClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpDashEditorClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_dash_editor_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_dash_editor_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_dash_editor_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %9 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %size_request = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %9, i32 0, i32 12
  store void (%struct._GtkWidget*, %struct._GtkRequisition*)* @gimp_dash_editor_size_request, void (%struct._GtkWidget*, %struct._GtkRequisition*)** %size_request, align 8
  %10 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %expose_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %10, i32 0, i32 31
  store i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @gimp_dash_editor_expose, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)** %expose_event, align 8
  %11 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %button_press_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %11, i32 0, i32 25
  store i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @gimp_dash_editor_button_press, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_press_event, align 8
  %12 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %button_release_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %12, i32 0, i32 26
  store i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @gimp_dash_editor_button_release, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_release_event, align 8
  %13 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %motion_notify_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %13, i32 0, i32 28
  store i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)* @gimp_dash_editor_motion_notify, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)** %motion_notify_event, align 8
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_stroke_options_get_type() #6
  %call4 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 1, %struct._GParamSpec* %call4)
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i32 2, i32 120, i32 24, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 2, %struct._GParamSpec* %call5)
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, double 0.000000e+00, double 2.000000e+03, double 1.200000e+01, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %16, i32 3, %struct._GParamSpec* %call6)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_dash_editor_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpDashEditor*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dash_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDashEditor*
  store %struct._GimpDashEditor* %2, %struct._GimpDashEditor** %editor, align 8
  %3 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %stroke_options = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %stroke_options, align 8
  %tobool = icmp ne %struct._GimpStrokeOptions* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %stroke_options2 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %5, i32 0, i32 1
  %6 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %stroke_options2, align 8
  %7 = bitcast %struct._GimpStrokeOptions* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %stroke_options3 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %8, i32 0, i32 1
  store %struct._GimpStrokeOptions* null, %struct._GimpStrokeOptions** %stroke_options3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %segments = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %9, i32 0, i32 4
  %10 = load i32*, i32** %segments, align 8
  %tobool4 = icmp ne i32* %10, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %11 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %segments6 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %11, i32 0, i32 4
  %12 = load i32*, i32** %segments6, align 8
  %13 = bitcast i32* %12 to i8*
  call void @g_free(i8* %13)
  %14 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %segments7 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %14, i32 0, i32 4
  store i32* null, i32** %segments7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %15 = load i8*, i8** @gimp_dash_editor_parent_class, align 8
  %16 = bitcast i8* %15 to %struct._GTypeClass*
  %call9 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %16, i64 80)
  %17 = bitcast %struct._GTypeClass* %call9 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %17, i32 0, i32 6
  %18 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %19 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %18(%struct._GObject* %19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dash_editor_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %editor = alloca %struct._GimpDashEditor*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dash_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDashEditor*
  store %struct._GimpDashEditor* %2, %struct._GimpDashEditor** %editor, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %stroke_options = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %5, i32 0, i32 1
  %6 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %stroke_options, align 8
  %7 = bitcast %struct._GimpStrokeOptions* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %n_segments = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %9, i32 0, i32 3
  %10 = load i32, i32* %n_segments, align 4
  call void @g_value_set_int(%struct._GValue* %8, i32 %10)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %12 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %dash_length = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %12, i32 0, i32 2
  %13 = load double, double* %dash_length, align 8
  call void @g_value_set_double(%struct._GValue* %11, double %13)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %14, %struct._GObject** %_glib__object, align 8
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %15, %struct._GParamSpec** %_glib__pspec, align 8
  %16 = load i32, i32* %property_id.addr, align 4
  store i32 %16, i32* %_glib__property_id, align 4
  %17 = load i32, i32* %_glib__property_id, align 4
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %18, i32 0, i32 1
  %19 = load i8*, i8** %name, align 8
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %21 = bitcast %struct._GParamSpec* %20 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type, align 8
  %call4 = call i8* @g_type_name(i64 %23)
  %24 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %25 = bitcast %struct._GObject* %24 to %struct._GTypeInstance*
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %26, i32 0, i32 0
  %27 = load i64, i64* %g_type6, align 8
  %call7 = call i8* @g_type_name(i64 %27)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 219, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %17, i8* %19, i8* %call4, i8* %call7)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dash_editor_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %editor = alloca %struct._GimpDashEditor*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dash_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDashEditor*
  store %struct._GimpDashEditor* %2, %struct._GimpDashEditor** %editor, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.6
    i32 3, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %4 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %stroke_options = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %4, i32 0, i32 1
  %5 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %stroke_options, align 8
  %cmp = icmp eq %struct._GimpStrokeOptions* %5, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_dash_editor_set_property, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_dup_object(%struct._GValue* %6)
  %7 = bitcast i8* %call2 to %struct._GimpStrokeOptions*
  %8 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %stroke_options3 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %8, i32 0, i32 1
  store %struct._GimpStrokeOptions* %7, %struct._GimpStrokeOptions** %stroke_options3, align 8
  %9 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %stroke_options4 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %9, i32 0, i32 1
  %10 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %stroke_options4, align 8
  %11 = bitcast %struct._GimpStrokeOptions* %10 to i8*
  %12 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %13 = bitcast %struct._GimpDashEditor* %12 to i8*
  %call5 = call i64 @g_signal_connect_object(i8* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDashEditor*)* @update_segments_from_options to void ()*), i8* %13, i32 2)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call7 = call i32 @g_value_get_int(%struct._GValue* %14)
  %15 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %n_segments = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %15, i32 0, i32 3
  store i32 %call7, i32* %n_segments, align 4
  %16 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %segments = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %16, i32 0, i32 4
  %17 = load i32*, i32** %segments, align 8
  %tobool = icmp ne i32* %17, null
  br i1 %tobool, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %sw.bb.6
  %18 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %segments9 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %18, i32 0, i32 4
  %19 = load i32*, i32** %segments9, align 8
  %20 = bitcast i32* %19 to i8*
  call void @g_free(i8* %20)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %sw.bb.6
  %21 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %n_segments11 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %21, i32 0, i32 3
  %22 = load i32, i32* %n_segments11, align 4
  %conv = sext i32 %22 to i64
  %call12 = call noalias i8* @g_malloc0_n(i64 %conv, i64 4)
  %23 = bitcast i8* %call12 to i32*
  %24 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %segments13 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %24, i32 0, i32 4
  store i32* %23, i32** %segments13, align 8
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call15 = call double @g_value_get_double(%struct._GValue* %25)
  %26 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %dash_length = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %26, i32 0, i32 2
  store double %call15, double* %dash_length, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body.16

do.body.16:                                       ; preds = %sw.default
  %27 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %27, %struct._GObject** %_glib__object, align 8
  %28 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %28, %struct._GParamSpec** %_glib__pspec, align 8
  %29 = load i32, i32* %property_id.addr, align 4
  store i32 %29, i32* %_glib__property_id, align 4
  %30 = load i32, i32* %_glib__property_id, align 4
  %31 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %31, i32 0, i32 1
  %32 = load i8*, i8** %name, align 8
  %33 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %34 = bitcast %struct._GParamSpec* %33 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %35, i32 0, i32 0
  %36 = load i64, i64* %g_type, align 8
  %call17 = call i8* @g_type_name(i64 %36)
  %37 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %38 = bitcast %struct._GObject* %37 to %struct._GTypeInstance*
  %g_class18 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %38, i32 0, i32 0
  %39 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class18, align 8
  %g_type19 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %39, i32 0, i32 0
  %40 = load i64, i64* %g_type19, align 8
  %call20 = call i8* @g_type_name(i64 %40)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 191, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %30, i8* %32, i8* %call17, i8* %call20)
  br label %do.end.21

do.end.21:                                        ; preds = %do.body.16
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.21, %sw.bb.14, %if.end.10, %do.end
  %41 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  call void @update_segments_from_options(%struct._GimpDashEditor* %41)
  br label %return

return:                                           ; preds = %sw.epilog, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dash_editor_size_request(%struct._GtkWidget* %widget, %struct._GtkRequisition* %requisition) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %requisition.addr = alloca %struct._GtkRequisition*, align 8
  %editor = alloca %struct._GimpDashEditor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkRequisition* %requisition, %struct._GtkRequisition** %requisition.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dash_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDashEditor*
  store %struct._GimpDashEditor* %2, %struct._GimpDashEditor** %editor, align 8
  %3 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %block_width = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %3, i32 0, i32 7
  %4 = load i32, i32* %block_width, align 4
  %5 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %n_segments = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %5, i32 0, i32 3
  %6 = load i32, i32* %n_segments, align 4
  %mul = mul nsw i32 %4, %6
  %add = add nsw i32 %mul, 20
  %cmp = icmp sgt i32 %add, 64
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %block_width2 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %7, i32 0, i32 7
  %8 = load i32, i32* %block_width2, align 4
  %9 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %n_segments3 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %9, i32 0, i32 3
  %10 = load i32, i32* %n_segments3, align 4
  %mul4 = mul nsw i32 %8, %10
  %add5 = add nsw i32 %mul4, 20
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add5, %cond.true ], [ 64, %cond.false ]
  %11 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %11, i32 0, i32 0
  store i32 %cond, i32* %width, align 4
  %12 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %block_height = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %12, i32 0, i32 8
  %13 = load i32, i32* %block_height, align 4
  %add6 = add nsw i32 %13, 10
  %cmp7 = icmp sgt i32 %add6, 20
  br i1 %cmp7, label %cond.true.8, label %cond.false.11

cond.true.8:                                      ; preds = %cond.end
  %14 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %block_height9 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %14, i32 0, i32 8
  %15 = load i32, i32* %block_height9, align 4
  %add10 = add nsw i32 %15, 10
  br label %cond.end.12

cond.false.11:                                    ; preds = %cond.end
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.8
  %cond13 = phi i32 [ %add10, %cond.true.8 ], [ 20, %cond.false.11 ]
  %16 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %16, i32 0, i32 1
  store i32 %cond13, i32* %height, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dash_editor_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %editor = alloca %struct._GimpDashEditor*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %cr = alloca %struct._cairo*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %x = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %index = alloca i32, align 4
  %index28 = alloca i32, align 4
  %index51 = alloca i32, align 4
  %index82 = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dash_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDashEditor*
  store %struct._GimpDashEditor* %2, %struct._GimpDashEditor** %editor, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %3)
  store %struct._GtkStyle* %call2, %struct._GtkStyle** %style, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call3 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %4)
  %call4 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call3)
  store %struct._cairo* %call4, %struct._cairo** %cr, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %5, %struct._GdkRectangle* %allocation)
  %6 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  call void @update_blocksize(%struct._GimpDashEditor* %6)
  %7 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %8 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %area = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %8, i32 0, i32 3
  call void @gdk_cairo_rectangle(%struct._cairo* %7, %struct._GdkRectangle* %area)
  %9 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %9)
  %10 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %11 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %base = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %11, i32 0, i32 7
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %base, i32 0, i64 0
  call void @gdk_cairo_set_source_color(%struct._cairo* %10, %struct._GdkColor* %arrayidx)
  %12 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_paint(%struct._cairo* %12)
  %13 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %block_width = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %13, i32 0, i32 7
  %14 = load i32, i32* %block_width, align 4
  store i32 %14, i32* %w, align 4
  %15 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %block_height = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %15, i32 0, i32 8
  %16 = load i32, i32* %block_height, align 4
  store i32 %16, i32* %h, align 4
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %17 = load i32, i32* %width, align 4
  %18 = load i32, i32* %w, align 4
  %19 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %n_segments = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %19, i32 0, i32 3
  %20 = load i32, i32* %n_segments, align 4
  %mul = mul nsw i32 %18, %20
  %sub = sub nsw i32 %17, %mul
  %div = sdiv i32 %sub, 2
  %21 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %x0 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %21, i32 0, i32 5
  store i32 %div, i32* %x0, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %22 = load i32, i32* %height, align 4
  %23 = load i32, i32* %h, align 4
  %sub5 = sub nsw i32 %22, %23
  %div6 = sdiv i32 %sub5, 2
  %24 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %y0 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %24, i32 0, i32 6
  store i32 %div6, i32* %y0, align 4
  %25 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %x07 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %25, i32 0, i32 5
  %26 = load i32, i32* %x07, align 4
  %27 = load i32, i32* %w, align 4
  %rem = srem i32 %26, %27
  store i32 %rem, i32* %x, align 4
  %28 = load i32, i32* %x, align 4
  %cmp = icmp sgt i32 %28, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %29 = load i32, i32* %w, align 4
  %30 = load i32, i32* %x, align 4
  %sub8 = sub nsw i32 %30, %29
  store i32 %sub8, i32* %x, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %31 = load i32, i32* %x, align 4
  %32 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %x09 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %32, i32 0, i32 5
  %33 = load i32, i32* %x09, align 4
  %cmp10 = icmp slt i32 %31, %33
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %35 = load i32, i32* %x, align 4
  %call11 = call i32 @dash_x_to_index(%struct._GimpDashEditor* %34, i32 %35)
  store i32 %call11, i32* %index, align 4
  %36 = load i32, i32* %index, align 4
  %idxprom = sext i32 %36 to i64
  %37 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %segments = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %37, i32 0, i32 4
  %38 = load i32*, i32** %segments, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %38, i64 %idxprom
  %39 = load i32, i32* %arrayidx12, align 4
  %tobool = icmp ne i32 %39, 0
  br i1 %tobool, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %for.body
  %40 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %41 = load i32, i32* %x, align 4
  %conv = sitofp i32 %41 to double
  %42 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %y014 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %42, i32 0, i32 6
  %43 = load i32, i32* %y014, align 4
  %conv15 = sitofp i32 %43 to double
  %44 = load i32, i32* %w, align 4
  %conv16 = sitofp i32 %44 to double
  %45 = load i32, i32* %h, align 4
  %conv17 = sitofp i32 %45 to double
  call void @cairo_rectangle(%struct._cairo* %40, double %conv, double %conv15, double %conv16, double %conv17)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.13, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %46 = load i32, i32* %w, align 4
  %47 = load i32, i32* %x, align 4
  %add = add nsw i32 %47, %46
  store i32 %add, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %48 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %49 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %text_aa = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %49, i32 0, i32 8
  %arrayidx19 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %text_aa, i32 0, i64 0
  call void @gdk_cairo_set_source_color(%struct._cairo* %48, %struct._GdkColor* %arrayidx19)
  %50 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_fill(%struct._cairo* %50)
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.41, %for.end
  %51 = load i32, i32* %x, align 4
  %52 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %x021 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %52, i32 0, i32 5
  %53 = load i32, i32* %x021, align 4
  %54 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %n_segments22 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %54, i32 0, i32 3
  %55 = load i32, i32* %n_segments22, align 4
  %56 = load i32, i32* %w, align 4
  %mul23 = mul nsw i32 %55, %56
  %add24 = add nsw i32 %53, %mul23
  %cmp25 = icmp slt i32 %51, %add24
  br i1 %cmp25, label %for.body.27, label %for.end.43

for.body.27:                                      ; preds = %for.cond.20
  %57 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %58 = load i32, i32* %x, align 4
  %call29 = call i32 @dash_x_to_index(%struct._GimpDashEditor* %57, i32 %58)
  store i32 %call29, i32* %index28, align 4
  %59 = load i32, i32* %index28, align 4
  %idxprom30 = sext i32 %59 to i64
  %60 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %segments31 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %60, i32 0, i32 4
  %61 = load i32*, i32** %segments31, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %61, i64 %idxprom30
  %62 = load i32, i32* %arrayidx32, align 4
  %tobool33 = icmp ne i32 %62, 0
  br i1 %tobool33, label %if.then.34, label %if.end.40

if.then.34:                                       ; preds = %for.body.27
  %63 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %64 = load i32, i32* %x, align 4
  %conv35 = sitofp i32 %64 to double
  %65 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %y036 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %65, i32 0, i32 6
  %66 = load i32, i32* %y036, align 4
  %conv37 = sitofp i32 %66 to double
  %67 = load i32, i32* %w, align 4
  %conv38 = sitofp i32 %67 to double
  %68 = load i32, i32* %h, align 4
  %conv39 = sitofp i32 %68 to double
  call void @cairo_rectangle(%struct._cairo* %63, double %conv35, double %conv37, double %conv38, double %conv39)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.34, %for.body.27
  br label %for.inc.41

for.inc.41:                                       ; preds = %if.end.40
  %69 = load i32, i32* %w, align 4
  %70 = load i32, i32* %x, align 4
  %add42 = add nsw i32 %70, %69
  store i32 %add42, i32* %x, align 4
  br label %for.cond.20

for.end.43:                                       ; preds = %for.cond.20
  %71 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %72 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %text = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %72, i32 0, i32 6
  %arrayidx44 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %text, i32 0, i64 0
  call void @gdk_cairo_set_source_color(%struct._cairo* %71, %struct._GdkColor* %arrayidx44)
  %73 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_fill(%struct._cairo* %73)
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.64, %for.end.43
  %74 = load i32, i32* %x, align 4
  %width46 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %75 = load i32, i32* %width46, align 4
  %76 = load i32, i32* %w, align 4
  %add47 = add nsw i32 %75, %76
  %cmp48 = icmp slt i32 %74, %add47
  br i1 %cmp48, label %for.body.50, label %for.end.66

for.body.50:                                      ; preds = %for.cond.45
  %77 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %78 = load i32, i32* %x, align 4
  %call52 = call i32 @dash_x_to_index(%struct._GimpDashEditor* %77, i32 %78)
  store i32 %call52, i32* %index51, align 4
  %79 = load i32, i32* %index51, align 4
  %idxprom53 = sext i32 %79 to i64
  %80 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %segments54 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %80, i32 0, i32 4
  %81 = load i32*, i32** %segments54, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %81, i64 %idxprom53
  %82 = load i32, i32* %arrayidx55, align 4
  %tobool56 = icmp ne i32 %82, 0
  br i1 %tobool56, label %if.then.57, label %if.end.63

if.then.57:                                       ; preds = %for.body.50
  %83 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %84 = load i32, i32* %x, align 4
  %conv58 = sitofp i32 %84 to double
  %85 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %y059 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %85, i32 0, i32 6
  %86 = load i32, i32* %y059, align 4
  %conv60 = sitofp i32 %86 to double
  %87 = load i32, i32* %w, align 4
  %conv61 = sitofp i32 %87 to double
  %88 = load i32, i32* %h, align 4
  %conv62 = sitofp i32 %88 to double
  call void @cairo_rectangle(%struct._cairo* %83, double %conv58, double %conv60, double %conv61, double %conv62)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.57, %for.body.50
  br label %for.inc.64

for.inc.64:                                       ; preds = %if.end.63
  %89 = load i32, i32* %w, align 4
  %90 = load i32, i32* %x, align 4
  %add65 = add nsw i32 %90, %89
  store i32 %add65, i32* %x, align 4
  br label %for.cond.45

for.end.66:                                       ; preds = %for.cond.45
  %91 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %92 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %text_aa67 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %92, i32 0, i32 8
  %arrayidx68 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %text_aa67, i32 0, i64 0
  call void @gdk_cairo_set_source_color(%struct._cairo* %91, %struct._GdkColor* %arrayidx68)
  %93 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_fill(%struct._cairo* %93)
  %94 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %x069 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %94, i32 0, i32 5
  %95 = load i32, i32* %x069, align 4
  %96 = load i32, i32* %w, align 4
  %rem70 = srem i32 %95, %96
  store i32 %rem70, i32* %x, align 4
  %97 = load i32, i32* %x, align 4
  %cmp71 = icmp sgt i32 %97, 0
  br i1 %cmp71, label %if.then.73, label %if.end.75

if.then.73:                                       ; preds = %for.end.66
  %98 = load i32, i32* %w, align 4
  %99 = load i32, i32* %x, align 4
  %sub74 = sub nsw i32 %99, %98
  store i32 %sub74, i32* %x, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.73, %for.end.66
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.144, %if.end.75
  %100 = load i32, i32* %x, align 4
  %width77 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %101 = load i32, i32* %width77, align 4
  %102 = load i32, i32* %w, align 4
  %add78 = add nsw i32 %101, %102
  %cmp79 = icmp slt i32 %100, %add78
  br i1 %cmp79, label %for.body.81, label %for.end.146

for.body.81:                                      ; preds = %for.cond.76
  %103 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %104 = load i32, i32* %x, align 4
  %call83 = call i32 @dash_x_to_index(%struct._GimpDashEditor* %103, i32 %104)
  store i32 %call83, i32* %index82, align 4
  %105 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %n_segments84 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %105, i32 0, i32 3
  %106 = load i32, i32* %n_segments84, align 4
  %rem85 = srem i32 %106, 4
  %cmp86 = icmp eq i32 %rem85, 0
  br i1 %cmp86, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body.81
  %107 = load i32, i32* %index82, align 4
  %add88 = add nsw i32 %107, 1
  %108 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %n_segments89 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %108, i32 0, i32 3
  %109 = load i32, i32* %n_segments89, align 4
  %div90 = sdiv i32 %109, 4
  %rem91 = srem i32 %add88, %div90
  %cmp92 = icmp eq i32 %rem91, 0
  br i1 %cmp92, label %if.then.94, label %if.else

if.then.94:                                       ; preds = %land.lhs.true
  %110 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %111 = load i32, i32* %x, align 4
  %112 = load i32, i32* %w, align 4
  %add95 = add nsw i32 %111, %112
  %conv96 = sitofp i32 %add95 to double
  %sub97 = fsub double %conv96, 5.000000e-01
  %113 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %y098 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %113, i32 0, i32 6
  %114 = load i32, i32* %y098, align 4
  %sub99 = sub nsw i32 %114, 2
  %conv100 = sitofp i32 %sub99 to double
  call void @cairo_move_to(%struct._cairo* %110, double %sub97, double %conv100)
  %115 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %116 = load i32, i32* %x, align 4
  %117 = load i32, i32* %w, align 4
  %add101 = add nsw i32 %116, %117
  %conv102 = sitofp i32 %add101 to double
  %sub103 = fsub double %conv102, 5.000000e-01
  %118 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %y0104 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %118, i32 0, i32 6
  %119 = load i32, i32* %y0104, align 4
  %120 = load i32, i32* %h, align 4
  %add105 = add nsw i32 %119, %120
  %add106 = add nsw i32 %add105, 2
  %conv107 = sitofp i32 %add106 to double
  call void @cairo_line_to(%struct._cairo* %115, double %sub103, double %conv107)
  br label %if.end.143

if.else:                                          ; preds = %land.lhs.true, %for.body.81
  %121 = load i32, i32* %index82, align 4
  %rem108 = srem i32 %121, 2
  %cmp109 = icmp eq i32 %rem108, 1
  br i1 %cmp109, label %if.then.111, label %if.else.125

if.then.111:                                      ; preds = %if.else
  %122 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %123 = load i32, i32* %x, align 4
  %124 = load i32, i32* %w, align 4
  %add112 = add nsw i32 %123, %124
  %conv113 = sitofp i32 %add112 to double
  %sub114 = fsub double %conv113, 5.000000e-01
  %125 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %y0115 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %125, i32 0, i32 6
  %126 = load i32, i32* %y0115, align 4
  %add116 = add nsw i32 %126, 1
  %conv117 = sitofp i32 %add116 to double
  call void @cairo_move_to(%struct._cairo* %122, double %sub114, double %conv117)
  %127 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %128 = load i32, i32* %x, align 4
  %129 = load i32, i32* %w, align 4
  %add118 = add nsw i32 %128, %129
  %conv119 = sitofp i32 %add118 to double
  %sub120 = fsub double %conv119, 5.000000e-01
  %130 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %y0121 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %130, i32 0, i32 6
  %131 = load i32, i32* %y0121, align 4
  %132 = load i32, i32* %h, align 4
  %add122 = add nsw i32 %131, %132
  %sub123 = sub nsw i32 %add122, 1
  %conv124 = sitofp i32 %sub123 to double
  call void @cairo_line_to(%struct._cairo* %127, double %sub120, double %conv124)
  br label %if.end.142

if.else.125:                                      ; preds = %if.else
  %133 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %134 = load i32, i32* %x, align 4
  %135 = load i32, i32* %w, align 4
  %add126 = add nsw i32 %134, %135
  %conv127 = sitofp i32 %add126 to double
  %sub128 = fsub double %conv127, 5.000000e-01
  %136 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %y0129 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %136, i32 0, i32 6
  %137 = load i32, i32* %y0129, align 4
  %138 = load i32, i32* %h, align 4
  %div130 = sdiv i32 %138, 2
  %add131 = add nsw i32 %137, %div130
  %sub132 = sub nsw i32 %add131, 1
  %conv133 = sitofp i32 %sub132 to double
  call void @cairo_move_to(%struct._cairo* %133, double %sub128, double %conv133)
  %139 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %140 = load i32, i32* %x, align 4
  %141 = load i32, i32* %w, align 4
  %add134 = add nsw i32 %140, %141
  %conv135 = sitofp i32 %add134 to double
  %sub136 = fsub double %conv135, 5.000000e-01
  %142 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %y0137 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %142, i32 0, i32 6
  %143 = load i32, i32* %y0137, align 4
  %144 = load i32, i32* %h, align 4
  %div138 = sdiv i32 %144, 2
  %add139 = add nsw i32 %143, %div138
  %add140 = add nsw i32 %add139, 1
  %conv141 = sitofp i32 %add140 to double
  call void @cairo_line_to(%struct._cairo* %139, double %sub136, double %conv141)
  br label %if.end.142

if.end.142:                                       ; preds = %if.else.125, %if.then.111
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142, %if.then.94
  br label %for.inc.144

for.inc.144:                                      ; preds = %if.end.143
  %145 = load i32, i32* %w, align 4
  %146 = load i32, i32* %x, align 4
  %add145 = add nsw i32 %146, %145
  store i32 %add145, i32* %x, align 4
  br label %for.cond.76

for.end.146:                                      ; preds = %for.cond.76
  %147 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %148 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %x0147 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %148, i32 0, i32 5
  %149 = load i32, i32* %x0147, align 4
  %conv148 = sitofp i32 %149 to double
  %sub149 = fsub double %conv148, 5.000000e-01
  %150 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %y0150 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %150, i32 0, i32 6
  %151 = load i32, i32* %y0150, align 4
  %sub151 = sub nsw i32 %151, 1
  %conv152 = sitofp i32 %sub151 to double
  call void @cairo_move_to(%struct._cairo* %147, double %sub149, double %conv152)
  %152 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %153 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %x0153 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %153, i32 0, i32 5
  %154 = load i32, i32* %x0153, align 4
  %conv154 = sitofp i32 %154 to double
  %sub155 = fsub double %conv154, 5.000000e-01
  %155 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %y0156 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %155, i32 0, i32 6
  %156 = load i32, i32* %y0156, align 4
  %157 = load i32, i32* %h, align 4
  %add157 = add nsw i32 %156, %157
  %conv158 = sitofp i32 %add157 to double
  call void @cairo_move_to(%struct._cairo* %152, double %sub155, double %conv158)
  %158 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %159 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %text_aa159 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %159, i32 0, i32 8
  %arrayidx160 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %text_aa159, i32 0, i64 0
  call void @gdk_cairo_set_source_color(%struct._cairo* %158, %struct._GdkColor* %arrayidx160)
  %160 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %160, double 1.000000e+00)
  %161 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %161)
  %162 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %162)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dash_editor_button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %bevent) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %bevent.addr = alloca %struct._GdkEventButton*, align 8
  %editor = alloca %struct._GimpDashEditor*, align 8
  %index = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %bevent, %struct._GdkEventButton** %bevent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dash_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDashEditor*
  store %struct._GimpDashEditor* %2, %struct._GimpDashEditor** %editor, align 8
  %3 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %3, i32 0, i32 8
  %4 = load i32, i32* %button, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %type = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %5, i32 0, i32 0
  %6 = load i32, i32* %type, align 4
  %cmp2 = icmp eq i32 %6, 4
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_grab_add(%struct._GtkWidget* %7)
  %8 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %9 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %9, i32 0, i32 4
  %10 = load double, double* %x, align 8
  %conv = fptosi double %10 to i32
  %call3 = call i32 @dash_x_to_index(%struct._GimpDashEditor* %8, i32 %conv)
  store i32 %call3, i32* %index, align 4
  %11 = load i32, i32* %index, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %segments = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %12, i32 0, i32 4
  %13 = load i32*, i32** %segments, align 8
  %arrayidx = getelementptr inbounds i32, i32* %13, i64 %idxprom
  %14 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %14, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %15 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %edit_mode = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %15, i32 0, i32 9
  store i32 %lnot.ext, i32* %edit_mode, align 4
  %16 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %x4 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %16, i32 0, i32 4
  %17 = load double, double* %x4, align 8
  %conv5 = fptosi double %17 to i32
  %18 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %edit_button_x0 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %18, i32 0, i32 10
  store i32 %conv5, i32* %edit_button_x0, align 4
  %19 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %edit_mode6 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %19, i32 0, i32 9
  %20 = load i32, i32* %edit_mode6, align 4
  %21 = load i32, i32* %index, align 4
  %idxprom7 = sext i32 %21 to i64
  %22 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %segments8 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %22, i32 0, i32 4
  %23 = load i32*, i32** %segments8, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %23, i64 %idxprom7
  store i32 %20, i32* %arrayidx9, align 4
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %24)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dash_editor_button_release(%struct._GtkWidget* %widget, %struct._GdkEventButton* %bevent) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %bevent.addr = alloca %struct._GdkEventButton*, align 8
  %editor = alloca %struct._GimpDashEditor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %bevent, %struct._GdkEventButton** %bevent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dash_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDashEditor*
  store %struct._GimpDashEditor* %2, %struct._GimpDashEditor** %editor, align 8
  %3 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %3, i32 0, i32 8
  %4 = load i32, i32* %button, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_grab_remove(%struct._GtkWidget* %5)
  %6 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  call void @update_options_from_segments(%struct._GimpDashEditor* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dash_editor_motion_notify(%struct._GtkWidget* %widget, %struct._GdkEventMotion* %mevent) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %mevent.addr = alloca %struct._GdkEventMotion*, align 8
  %editor = alloca %struct._GimpDashEditor*, align 8
  %x = alloca i32, align 4
  %index = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventMotion* %mevent, %struct._GdkEventMotion** %mevent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dash_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDashEditor*
  store %struct._GimpDashEditor* %2, %struct._GimpDashEditor** %editor, align 8
  %3 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %4 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent.addr, align 8
  %x2 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %4, i32 0, i32 4
  %5 = load double, double* %x2, align 8
  %conv = fptosi double %5 to i32
  %call3 = call i32 @dash_x_to_index(%struct._GimpDashEditor* %3, i32 %conv)
  store i32 %call3, i32* %index, align 4
  %6 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %edit_mode = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %6, i32 0, i32 9
  %7 = load i32, i32* %edit_mode, align 4
  %8 = load i32, i32* %index, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %segments = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %9, i32 0, i32 4
  %10 = load i32*, i32** %segments, align 8
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  store i32 %7, i32* %arrayidx, align 4
  %11 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent.addr, align 8
  %x4 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %11, i32 0, i32 4
  %12 = load double, double* %x4, align 8
  %13 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %edit_button_x0 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %13, i32 0, i32 10
  %14 = load i32, i32* %edit_button_x0, align 4
  %conv5 = sitofp i32 %14 to double
  %cmp = fcmp ogt double %12, %conv5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %edit_button_x07 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %15, i32 0, i32 10
  %16 = load i32, i32* %edit_button_x07, align 4
  store i32 %16, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %17 = load i32, i32* %x, align 4
  %conv8 = sitofp i32 %17 to double
  %18 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent.addr, align 8
  %x9 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %18, i32 0, i32 4
  %19 = load double, double* %x9, align 8
  %cmp10 = fcmp olt double %conv8, %19
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %21 = load i32, i32* %x, align 4
  %call12 = call i32 @dash_x_to_index(%struct._GimpDashEditor* %20, i32 %21)
  store i32 %call12, i32* %index, align 4
  %22 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %edit_mode13 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %22, i32 0, i32 9
  %23 = load i32, i32* %edit_mode13, align 4
  %24 = load i32, i32* %index, align 4
  %idxprom14 = sext i32 %24 to i64
  %25 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %segments15 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %25, i32 0, i32 4
  %26 = load i32*, i32** %segments15, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %26, i64 %idxprom14
  store i32 %23, i32* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %block_width = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %27, i32 0, i32 7
  %28 = load i32, i32* %block_width, align 4
  %29 = load i32, i32* %x, align 4
  %add = add nsw i32 %29, %28
  store i32 %add, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %30 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent.addr, align 8
  %x17 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %30, i32 0, i32 4
  %31 = load double, double* %x17, align 8
  %32 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %edit_button_x018 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %32, i32 0, i32 10
  %33 = load i32, i32* %edit_button_x018, align 4
  %conv19 = sitofp i32 %33 to double
  %cmp20 = fcmp olt double %31, %conv19
  br i1 %cmp20, label %if.then.22, label %if.end.38

if.then.22:                                       ; preds = %if.end
  %34 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %edit_button_x023 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %34, i32 0, i32 10
  %35 = load i32, i32* %edit_button_x023, align 4
  store i32 %35, i32* %x, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.35, %if.then.22
  %36 = load i32, i32* %x, align 4
  %conv25 = sitofp i32 %36 to double
  %37 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent.addr, align 8
  %x26 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %37, i32 0, i32 4
  %38 = load double, double* %x26, align 8
  %cmp27 = fcmp ogt double %conv25, %38
  br i1 %cmp27, label %for.body.29, label %for.end.37

for.body.29:                                      ; preds = %for.cond.24
  %39 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %40 = load i32, i32* %x, align 4
  %call30 = call i32 @dash_x_to_index(%struct._GimpDashEditor* %39, i32 %40)
  store i32 %call30, i32* %index, align 4
  %41 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %edit_mode31 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %41, i32 0, i32 9
  %42 = load i32, i32* %edit_mode31, align 4
  %43 = load i32, i32* %index, align 4
  %idxprom32 = sext i32 %43 to i64
  %44 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %segments33 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %44, i32 0, i32 4
  %45 = load i32*, i32** %segments33, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %45, i64 %idxprom32
  store i32 %42, i32* %arrayidx34, align 4
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.29
  %46 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor, align 8
  %block_width36 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %46, i32 0, i32 7
  %47 = load i32, i32* %block_width36, align 4
  %48 = load i32, i32* %x, align 4
  %sub = sub nsw i32 %48, %47
  store i32 %sub, i32* %x, align 4
  br label %for.cond.24

for.end.37:                                       ; preds = %for.cond.24
  br label %if.end.38

if.end.38:                                        ; preds = %for.end.37, %if.end
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %49)
  ret i32 1
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_object_unref(i8*) #1

declare void @g_free(i8*) #1

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

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

declare i8* @g_value_dup_object(%struct._GValue*) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @update_segments_from_options(%struct._GimpDashEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpDashEditor*, align 8
  %dash_info = alloca %struct._GArray*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDashEditor* %editor, %struct._GimpDashEditor** %editor.addr, align 8
  %0 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %stroke_options = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %0, i32 0, i32 1
  %1 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %stroke_options, align 8
  %cmp = icmp eq %struct._GimpStrokeOptions* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %segments = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %2, i32 0, i32 4
  %3 = load i32*, i32** %segments, align 8
  %cmp1 = icmp eq i32* %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %stroke_options2 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %4, i32 0, i32 1
  %5 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %stroke_options2, align 8
  %6 = bitcast %struct._GimpStrokeOptions* %5 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %6, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_options_get_type() #6
  store i64 %call, i64* %__t, align 8
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %7, null
  br i1 %tobool, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else:                                          ; preds = %do.body
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %9, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %11, i32 0, i32 0
  %12 = load i64, i64* %g_type, align 8
  %13 = load i64, i64* %__t, align 8
  %cmp6 = icmp eq i64 %12, %13
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.10

if.else.8:                                        ; preds = %land.lhs.true, %if.else
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %15 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %14, i64 %15) #7
  store i32 %call9, i32* %__r, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.3
  %16 = load i32, i32* %__r, align 4
  store i32 %16, i32* %tmp
  %17 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %17, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.end.11
  br label %if.end.15

if.else.14:                                       ; preds = %if.end.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.update_segments_from_options, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.15
  %18 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %19 = bitcast %struct._GimpDashEditor* %18 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_widget_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call16)
  %20 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %20)
  %21 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %stroke_options18 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %21, i32 0, i32 1
  %22 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %stroke_options18, align 8
  %call19 = call %struct._GArray* @gimp_stroke_options_get_dash_info(%struct._GimpStrokeOptions* %22)
  store %struct._GArray* %call19, %struct._GArray** %dash_info, align 8
  %23 = load %struct._GArray*, %struct._GArray** %dash_info, align 8
  %24 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %segments20 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %24, i32 0, i32 4
  %25 = load i32*, i32** %segments20, align 8
  %26 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %n_segments = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %26, i32 0, i32 3
  %27 = load i32, i32* %n_segments, align 4
  call void @gimp_dash_pattern_fill_segments(%struct._GArray* %23, i32* %25, i32 %27)
  br label %return

return:                                           ; preds = %do.end, %if.else.14, %if.then
  ret void
}

declare i32 @g_value_get_int(%struct._GValue*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

declare %struct._GArray* @gimp_stroke_options_get_dash_info(%struct._GimpStrokeOptions*) #1

declare void @gimp_dash_pattern_fill_segments(%struct._GArray*, i32*, i32) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

; Function Attrs: nounwind uwtable
define internal void @update_blocksize(%struct._GimpDashEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpDashEditor*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  store %struct._GimpDashEditor* %editor, %struct._GimpDashEditor** %editor.addr, align 8
  %0 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpDashEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %2, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %3, %struct._GdkRectangle* %allocation)
  %4 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %block_height = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %4, i32 0, i32 8
  store i32 6, i32* %block_height, align 4
  %5 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %dash_length = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %5, i32 0, i32 2
  %6 = load double, double* %dash_length, align 8
  %7 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %n_segments = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %7, i32 0, i32 3
  %8 = load i32, i32* %n_segments, align 4
  %conv = sitofp i32 %8 to double
  %div = fdiv double %6, %conv
  %9 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %block_height2 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %9, i32 0, i32 8
  %10 = load i32, i32* %block_height2, align 4
  %conv3 = sitofp i32 %10 to double
  %mul = fmul double %div, %conv3
  %add = fadd double %mul, 5.000000e-01
  %conv4 = fptosi double %add to i32
  %cmp = icmp sgt i32 %conv4, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %11 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %dash_length6 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %11, i32 0, i32 2
  %12 = load double, double* %dash_length6, align 8
  %13 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %n_segments7 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %13, i32 0, i32 3
  %14 = load i32, i32* %n_segments7, align 4
  %conv8 = sitofp i32 %14 to double
  %div9 = fdiv double %12, %conv8
  %15 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %block_height10 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %15, i32 0, i32 8
  %16 = load i32, i32* %block_height10, align 4
  %conv11 = sitofp i32 %16 to double
  %mul12 = fmul double %div9, %conv11
  %add13 = fadd double %mul12, 5.000000e-01
  %conv14 = fptosi double %add13 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv14, %cond.true ], [ 4, %cond.false ]
  %17 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %block_width = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %17, i32 0, i32 7
  store i32 %cond, i32* %block_width, align 4
  %18 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %block_width15 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %18, i32 0, i32 7
  %19 = load i32, i32* %block_width15, align 4
  %conv16 = sitofp i32 %19 to float
  %20 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %n_segments17 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %20, i32 0, i32 3
  %21 = load i32, i32* %n_segments17, align 4
  %conv18 = sitofp i32 %21 to float
  %mul19 = fmul float %conv16, %conv18
  %conv20 = fpext float %mul19 to double
  %22 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %dash_length21 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %22, i32 0, i32 2
  %23 = load double, double* %dash_length21, align 8
  %div22 = fdiv double %conv20, %23
  %add23 = fadd double %div22, 5.000000e-01
  %conv24 = fptosi double %add23 to i32
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %24 = load i32, i32* %height, align 4
  %sub = sub nsw i32 %24, 4
  %cmp25 = icmp slt i32 %conv24, %sub
  br i1 %cmp25, label %cond.true.27, label %cond.false.38

cond.true.27:                                     ; preds = %cond.end
  %25 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %block_width28 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %25, i32 0, i32 7
  %26 = load i32, i32* %block_width28, align 4
  %conv29 = sitofp i32 %26 to float
  %27 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %n_segments30 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %27, i32 0, i32 3
  %28 = load i32, i32* %n_segments30, align 4
  %conv31 = sitofp i32 %28 to float
  %mul32 = fmul float %conv29, %conv31
  %conv33 = fpext float %mul32 to double
  %29 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %dash_length34 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %29, i32 0, i32 2
  %30 = load double, double* %dash_length34, align 8
  %div35 = fdiv double %conv33, %30
  %add36 = fadd double %div35, 5.000000e-01
  %conv37 = fptosi double %add36 to i32
  br label %cond.end.41

cond.false.38:                                    ; preds = %cond.end
  %height39 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %31 = load i32, i32* %height39, align 4
  %sub40 = sub nsw i32 %31, 4
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.38, %cond.true.27
  %cond42 = phi i32 [ %conv37, %cond.true.27 ], [ %sub40, %cond.false.38 ]
  %32 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %block_height43 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %32, i32 0, i32 8
  store i32 %cond42, i32* %block_height43, align 4
  ret void
}

declare void @gdk_cairo_rectangle(%struct._cairo*, %struct._GdkRectangle*) #1

declare void @cairo_clip(%struct._cairo*) #1

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #1

declare void @cairo_paint(%struct._cairo*) #1

; Function Attrs: nounwind uwtable
define internal i32 @dash_x_to_index(%struct._GimpDashEditor* %editor, i32 %x) #3 {
entry:
  %editor.addr = alloca %struct._GimpDashEditor*, align 8
  %x.addr = alloca i32, align 4
  %index = alloca i32, align 4
  store %struct._GimpDashEditor* %editor, %struct._GimpDashEditor** %editor.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %x0 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %1, i32 0, i32 5
  %2 = load i32, i32* %x0, align 4
  %sub = sub nsw i32 %0, %2
  store i32 %sub, i32* %index, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, i32* %index, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %n_segments = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %4, i32 0, i32 3
  %5 = load i32, i32* %n_segments, align 4
  %6 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %block_width = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %6, i32 0, i32 7
  %7 = load i32, i32* %block_width, align 4
  %mul = mul nsw i32 %5, %7
  %8 = load i32, i32* %index, align 4
  %add = add nsw i32 %8, %mul
  store i32 %add, i32* %index, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load i32, i32* %index, align 4
  %10 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %block_width1 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %10, i32 0, i32 7
  %11 = load i32, i32* %block_width1, align 4
  %div = sdiv i32 %9, %11
  %12 = load %struct._GimpDashEditor*, %struct._GimpDashEditor** %editor.addr, align 8
  %n_segments2 = getelementptr inbounds %struct._GimpDashEditor, %struct._GimpDashEditor* %12, i32 0, i32 3
  %13 = load i32, i32* %n_segments2, align 4
  %rem = srem i32 %div, %13
  store i32 %rem, i32* %index, align 4
  %14 = load i32, i32* %index, align 4
  ret i32 %14
}

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #1

declare void @cairo_fill(%struct._cairo*) #1

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

declare void @cairo_stroke(%struct._cairo*) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare void @gtk_grab_add(%struct._GtkWidget*) #1

declare void @gtk_grab_remove(%struct._GtkWidget*) #1

declare void @gtk_widget_add_events(%struct._GtkWidget*, i32) #1

declare %struct._GArray* @gimp_dash_pattern_new_from_segments(i32*, i32, double) #1

declare void @gimp_stroke_options_take_dash_pattern(%struct._GimpStrokeOptions*, i32, %struct._GArray*) #1

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
