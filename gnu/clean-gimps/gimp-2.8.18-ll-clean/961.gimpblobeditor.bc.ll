; ModuleID = './app/widgets/gimpblobeditor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpBlobEditorClass = type { %struct._GtkDrawingAreaClass }
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
%struct._GimpBlobEditor = type { %struct._GtkDrawingArea, i32, double, double, i32 }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._cairo = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpBlob = type { i32, i32, [1 x %struct._GimpBlobSpan] }
%struct._GimpBlobSpan = type { i32, i32 }

@gimp_blob_editor_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpBlobEditor\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"blob-type\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"blob-aspect\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"blob-angle\00", align 1
@gimp_blob_editor_parent_class = internal global i8* null, align 8
@GimpBlobEditor_private_offset = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"gimpblobeditor.c\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_blob_editor_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_blob_editor_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_blob_editor_get_type.g_define_type_id__volatile to i8*))
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
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 752, void (i8*, i8*)* bitcast (void (i8*)* @gimp_blob_editor_class_intern_init to void (i8*, i8*)*), i32 136, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpBlobEditor*)* @gimp_blob_editor_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_blob_editor_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_blob_editor_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_drawing_area_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_blob_editor_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_blob_editor_parent_class, align 8
  %1 = load i32, i32* @GimpBlobEditor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpBlobEditor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpBlobEditorClass*
  call void @gimp_blob_editor_class_init(%struct._GimpBlobEditorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_blob_editor_init(%struct._GimpBlobEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpBlobEditor*, align 8
  store %struct._GimpBlobEditor* %editor, %struct._GimpBlobEditor** %editor.addr, align 8
  %0 = load %struct._GimpBlobEditor*, %struct._GimpBlobEditor** %editor.addr, align 8
  %active = getelementptr inbounds %struct._GimpBlobEditor, %struct._GimpBlobEditor* %0, i32 0, i32 4
  store i32 0, i32* %active, align 4
  %1 = load %struct._GimpBlobEditor*, %struct._GimpBlobEditor** %editor.addr, align 8
  %2 = bitcast %struct._GimpBlobEditor* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_widget_add_events(%struct._GtkWidget* %3, i32 774)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_blob_editor_new(i32 %type, double %aspect, double %angle) #3 {
entry:
  %type.addr = alloca i32, align 4
  %aspect.addr = alloca double, align 8
  %angle.addr = alloca double, align 8
  store i32 %type, i32* %type.addr, align 4
  store double %aspect, double* %aspect.addr, align 8
  store double %angle, double* %angle.addr, align 8
  %call = call i64 @gimp_blob_editor_get_type() #6
  %0 = load i32, i32* %type.addr, align 4
  %1 = load double, double* %aspect.addr, align 8
  %2 = load double, double* %angle.addr, align 8
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), double %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), double %2, i8* null)
  %3 = bitcast i8* %call1 to %struct._GtkWidget*
  ret %struct._GtkWidget* %3
}

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_blob_editor_class_init(%struct._GimpBlobEditorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpBlobEditorClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpBlobEditorClass* %klass, %struct._GimpBlobEditorClass** %klass.addr, align 8
  %0 = load %struct._GimpBlobEditorClass*, %struct._GimpBlobEditorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpBlobEditorClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpBlobEditorClass*, %struct._GimpBlobEditorClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpBlobEditorClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_blob_editor_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_blob_editor_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %8 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %expose_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %8, i32 0, i32 31
  store i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @gimp_blob_editor_expose, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)** %expose_event, align 8
  %9 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %button_press_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %9, i32 0, i32 25
  store i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @gimp_blob_editor_button_press, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_press_event, align 8
  %10 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %button_release_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %10, i32 0, i32 26
  store i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @gimp_blob_editor_button_release, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_release_event, align 8
  %11 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %motion_notify_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %11, i32 0, i32 28
  store i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)* @gimp_blob_editor_motion_notify, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)** %motion_notify_event, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_ink_blob_type_get_type() #6
  %call4 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 0, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 1, %struct._GParamSpec* %call4)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null, double 1.000000e+00, double 1.000000e+01, double 1.000000e+00, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 2, %struct._GParamSpec* %call5)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, double -9.000000e+01, double 9.000000e+01, double 0.000000e+00, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 3, %struct._GParamSpec* %call6)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_blob_editor_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %editor = alloca %struct._GimpBlobEditor*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_blob_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBlobEditor*
  store %struct._GimpBlobEditor* %2, %struct._GimpBlobEditor** %editor, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_enum(%struct._GValue* %4)
  %5 = load %struct._GimpBlobEditor*, %struct._GimpBlobEditor** %editor, align 8
  %type = getelementptr inbounds %struct._GimpBlobEditor, %struct._GimpBlobEditor* %5, i32 0, i32 1
  store i32 %call2, i32* %type, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call double @g_value_get_double(%struct._GValue* %6)
  %7 = load %struct._GimpBlobEditor*, %struct._GimpBlobEditor** %editor, align 8
  %aspect = getelementptr inbounds %struct._GimpBlobEditor, %struct._GimpBlobEditor* %7, i32 0, i32 2
  store double %call4, double* %aspect, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call double @g_value_get_double(%struct._GValue* %8)
  %9 = load %struct._GimpBlobEditor*, %struct._GimpBlobEditor** %editor, align 8
  %angle = getelementptr inbounds %struct._GimpBlobEditor, %struct._GimpBlobEditor* %9, i32 0, i32 3
  store double %call6, double* %angle, align 8
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
  %call7 = call i8* @g_type_name(i64 %19)
  %20 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %21 = bitcast %struct._GObject* %20 to %struct._GTypeInstance*
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type9 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type9, align 8
  %call10 = call i8* @g_type_name(i64 %23)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 152, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 %13, i8* %15, i8* %call7, i8* %call10)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.5, %sw.bb.3, %sw.bb
  %24 = load %struct._GimpBlobEditor*, %struct._GimpBlobEditor** %editor, align 8
  %25 = bitcast %struct._GimpBlobEditor* %24 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_widget_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call11)
  %26 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %26)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_blob_editor_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %editor = alloca %struct._GimpBlobEditor*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_blob_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBlobEditor*
  store %struct._GimpBlobEditor* %2, %struct._GimpBlobEditor** %editor, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpBlobEditor*, %struct._GimpBlobEditor** %editor, align 8
  %type = getelementptr inbounds %struct._GimpBlobEditor, %struct._GimpBlobEditor* %5, i32 0, i32 1
  %6 = load i32, i32* %type, align 4
  call void @g_value_set_enum(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpBlobEditor*, %struct._GimpBlobEditor** %editor, align 8
  %aspect = getelementptr inbounds %struct._GimpBlobEditor, %struct._GimpBlobEditor* %8, i32 0, i32 2
  %9 = load double, double* %aspect, align 8
  call void @g_value_set_double(%struct._GValue* %7, double %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpBlobEditor*, %struct._GimpBlobEditor** %editor, align 8
  %angle = getelementptr inbounds %struct._GimpBlobEditor, %struct._GimpBlobEditor* %11, i32 0, i32 3
  %12 = load double, double* %angle, align 8
  call void @g_value_set_double(%struct._GValue* %10, double %12)
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
  %call4 = call i8* @g_type_name(i64 %22)
  %23 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %24 = bitcast %struct._GObject* %23 to %struct._GTypeInstance*
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type6, align 8
  %call7 = call i8* @g_type_name(i64 %26)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 180, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 %16, i8* %18, i8* %call4, i8* %call7)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_blob_editor_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %editor = alloca %struct._GimpBlobEditor*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %state = alloca i32, align 4
  %allocation = alloca %struct._GdkRectangle, align 4
  %cr = alloca %struct._cairo*, align 8
  %rect = alloca %struct._GdkRectangle, align 4
  %r0 = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_blob_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBlobEditor*
  store %struct._GimpBlobEditor* %2, %struct._GimpBlobEditor** %editor, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %3)
  store %struct._GtkStyle* %call2, %struct._GtkStyle** %style, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call3 = call i32 @gtk_widget_get_state(%struct._GtkWidget* %4)
  store i32 %call3, i32* %state, align 4
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %5, %struct._GdkRectangle* %allocation)
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %6 = load i32, i32* %width, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %7 = load i32, i32* %height, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %width4 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %8 = load i32, i32* %width4, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %height5 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %9 = load i32, i32* %height5, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %9, %cond.false ]
  %div = sdiv i32 %cond, 2
  store i32 %div, i32* %r0, align 4
  %10 = load i32, i32* %r0, align 4
  %cmp6 = icmp slt i32 %10, 2
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call7 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %11)
  %call8 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call7)
  store %struct._cairo* %call8, %struct._cairo** %cr, align 8
  %12 = load %struct._GimpBlobEditor*, %struct._GimpBlobEditor** %editor, align 8
  %13 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %width9 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %14 = load i32, i32* %width9, align 4
  %conv = sitofp i32 %14 to double
  %div10 = fdiv double %conv, 2.000000e+00
  %height11 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %15 = load i32, i32* %height11, align 4
  %conv12 = sitofp i32 %15 to double
  %div13 = fdiv double %conv12, 2.000000e+00
  %16 = load i32, i32* %r0, align 4
  %conv14 = sitofp i32 %16 to double
  %mul = fmul double 9.000000e-01, %conv14
  call void @gimp_blob_editor_draw_blob(%struct._GimpBlobEditor* %12, %struct._cairo* %13, double %div10, double %div13, double %mul)
  %17 = load %struct._GimpBlobEditor*, %struct._GimpBlobEditor** %editor, align 8
  call void @gimp_blob_editor_get_handle(%struct._GimpBlobEditor* %17, %struct._GdkRectangle* %rect)
  %18 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %19 = load i32, i32* %x, align 4
  %conv15 = sitofp i32 %19 to double
  %add = fadd double %conv15, 5.000000e-01
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %20 = load i32, i32* %y, align 4
  %conv16 = sitofp i32 %20 to double
  %add17 = fadd double %conv16, 5.000000e-01
  %width18 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  %21 = load i32, i32* %width18, align 4
  %sub = sub nsw i32 %21, 1
  %conv19 = sitofp i32 %sub to double
  %width20 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  %22 = load i32, i32* %width20, align 4
  %sub21 = sub nsw i32 %22, 1
  %conv22 = sitofp i32 %sub21 to double
  call void @cairo_rectangle(%struct._cairo* %18, double %add, double %add17, double %conv19, double %conv22)
  %23 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %24 = load i32, i32* %state, align 4
  %idxprom = zext i32 %24 to i64
  %25 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %light = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %25, i32 0, i32 3
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %light, i32 0, i64 %idxprom
  call void @gdk_cairo_set_source_color(%struct._cairo* %23, %struct._GdkColor* %arrayidx)
  %26 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_fill_preserve(%struct._cairo* %26)
  %27 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %28 = load i32, i32* %state, align 4
  %idxprom23 = zext i32 %28 to i64
  %29 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %dark = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %29, i32 0, i32 4
  %arrayidx24 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %dark, i32 0, i64 %idxprom23
  call void @gdk_cairo_set_source_color(%struct._cairo* %27, %struct._GdkColor* %arrayidx24)
  %30 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %30, double 1.000000e+00)
  %31 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %31)
  %32 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %32)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_blob_editor_button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %editor = alloca %struct._GimpBlobEditor*, align 8
  %rect = alloca %struct._GdkRectangle, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_blob_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBlobEditor*
  store %struct._GimpBlobEditor* %2, %struct._GimpBlobEditor** %editor, align 8
  %3 = load %struct._GimpBlobEditor*, %struct._GimpBlobEditor** %editor, align 8
  call void @gimp_blob_editor_get_handle(%struct._GimpBlobEditor* %3, %struct._GdkRectangle* %rect)
  %4 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %4, i32 0, i32 4
  %5 = load double, double* %x, align 8
  %x2 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %6 = load i32, i32* %x2, align 4
  %conv = sitofp i32 %6 to double
  %cmp = fcmp oge double %5, %conv
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x4 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %7, i32 0, i32 4
  %8 = load double, double* %x4, align 8
  %x5 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %9 = load i32, i32* %x5, align 4
  %conv6 = sitofp i32 %9 to double
  %sub = fsub double %8, %conv6
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  %10 = load i32, i32* %width, align 4
  %conv7 = sitofp i32 %10 to double
  %cmp8 = fcmp olt double %sub, %conv7
  br i1 %cmp8, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %11 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %11, i32 0, i32 5
  %12 = load double, double* %y, align 8
  %y11 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %13 = load i32, i32* %y11, align 4
  %conv12 = sitofp i32 %13 to double
  %cmp13 = fcmp oge double %12, %conv12
  br i1 %cmp13, label %land.lhs.true.15, label %if.end

land.lhs.true.15:                                 ; preds = %land.lhs.true.10
  %14 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %y16 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %14, i32 0, i32 5
  %15 = load double, double* %y16, align 8
  %y17 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %16 = load i32, i32* %y17, align 4
  %conv18 = sitofp i32 %16 to double
  %sub19 = fsub double %15, %conv18
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  %17 = load i32, i32* %height, align 4
  %conv20 = sitofp i32 %17 to double
  %cmp21 = fcmp olt double %sub19, %conv20
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.15
  %18 = load %struct._GimpBlobEditor*, %struct._GimpBlobEditor** %editor, align 8
  %active = getelementptr inbounds %struct._GimpBlobEditor, %struct._GimpBlobEditor* %18, i32 0, i32 4
  store i32 1, i32* %active, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.15, %land.lhs.true.10, %land.lhs.true, %entry
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_blob_editor_button_release(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %editor = alloca %struct._GimpBlobEditor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_blob_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBlobEditor*
  store %struct._GimpBlobEditor* %2, %struct._GimpBlobEditor** %editor, align 8
  %3 = load %struct._GimpBlobEditor*, %struct._GimpBlobEditor** %editor, align 8
  %active = getelementptr inbounds %struct._GimpBlobEditor, %struct._GimpBlobEditor* %3, i32 0, i32 4
  store i32 0, i32* %active, align 4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_blob_editor_motion_notify(%struct._GtkWidget* %widget, %struct._GdkEventMotion* %event) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventMotion*, align 8
  %editor = alloca %struct._GimpBlobEditor*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %rsquare = alloca i32, align 4
  %r0 = alloca i32, align 4
  %angle = alloca double, align 8
  %aspect = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventMotion* %event, %struct._GdkEventMotion** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_blob_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBlobEditor*
  store %struct._GimpBlobEditor* %2, %struct._GimpBlobEditor** %editor, align 8
  %3 = load %struct._GimpBlobEditor*, %struct._GimpBlobEditor** %editor, align 8
  %active = getelementptr inbounds %struct._GimpBlobEditor, %struct._GimpBlobEditor* %3, i32 0, i32 4
  %4 = load i32, i32* %active, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.41

if.then:                                          ; preds = %entry
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %5, %struct._GdkRectangle* %allocation)
  %6 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %x2 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %6, i32 0, i32 4
  %7 = load double, double* %x2, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %8 = load i32, i32* %width, align 4
  %div = sdiv i32 %8, 2
  %conv = sitofp i32 %div to double
  %sub = fsub double %7, %conv
  %conv3 = fptosi double %sub to i32
  store i32 %conv3, i32* %x, align 4
  %9 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %y4 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %9, i32 0, i32 5
  %10 = load double, double* %y4, align 8
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %11 = load i32, i32* %height, align 4
  %div5 = sdiv i32 %11, 2
  %conv6 = sitofp i32 %div5 to double
  %sub7 = fsub double %10, %conv6
  %conv8 = fptosi double %sub7 to i32
  store i32 %conv8, i32* %y, align 4
  %12 = load i32, i32* %x, align 4
  %13 = load i32, i32* %x, align 4
  %mul = mul nsw i32 %12, %13
  %14 = load i32, i32* %y, align 4
  %15 = load i32, i32* %y, align 4
  %mul9 = mul nsw i32 %14, %15
  %add = add nsw i32 %mul, %mul9
  store i32 %add, i32* %rsquare, align 4
  %16 = load i32, i32* %rsquare, align 4
  %cmp = icmp sgt i32 %16, 0
  br i1 %cmp, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %width12 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %17 = load i32, i32* %width12, align 4
  %height13 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %18 = load i32, i32* %height13, align 4
  %cmp14 = icmp slt i32 %17, %18
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.11
  %width16 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %19 = load i32, i32* %width16, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.11
  %height17 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %20 = load i32, i32* %height17, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %20, %cond.false ]
  %div18 = sdiv i32 %cond, 2
  store i32 %div18, i32* %r0, align 4
  %21 = load i32, i32* %y, align 4
  %conv19 = sitofp i32 %21 to double
  %22 = load i32, i32* %x, align 4
  %conv20 = sitofp i32 %22 to double
  %call21 = call double @atan2(double %conv19, double %conv20) #4
  store double %call21, double* %angle, align 8
  %23 = load i32, i32* %rsquare, align 4
  %conv22 = sitofp i32 %23 to double
  %24 = load i32, i32* %r0, align 4
  %25 = load i32, i32* %r0, align 4
  %mul23 = mul nsw i32 %24, %25
  %conv24 = sitofp i32 %mul23 to double
  %div25 = fdiv double %conv22, %conv24
  %call26 = call double @sqrt(double %div25) #4
  %mul27 = fmul double 1.000000e+01, %call26
  %div28 = fdiv double %mul27, 8.500000e-01
  store double %div28, double* %aspect, align 8
  %26 = load double, double* %aspect, align 8
  %cmp29 = fcmp ogt double %26, 1.000000e+01
  br i1 %cmp29, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %cond.end
  br label %cond.end.39

cond.false.32:                                    ; preds = %cond.end
  %27 = load double, double* %aspect, align 8
  %cmp33 = fcmp olt double %27, 1.000000e+00
  br i1 %cmp33, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %cond.false.32
  br label %cond.end.37

cond.false.36:                                    ; preds = %cond.false.32
  %28 = load double, double* %aspect, align 8
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.35
  %cond38 = phi double [ 1.000000e+00, %cond.true.35 ], [ %28, %cond.false.36 ]
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.end.37, %cond.true.31
  %cond40 = phi double [ 1.000000e+01, %cond.true.31 ], [ %cond38, %cond.end.37 ]
  store double %cond40, double* %aspect, align 8
  %29 = load %struct._GimpBlobEditor*, %struct._GimpBlobEditor** %editor, align 8
  %30 = bitcast %struct._GimpBlobEditor* %29 to i8*
  %31 = load double, double* %angle, align 8
  %32 = load double, double* %aspect, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), double %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), double %32, i8* null)
  br label %if.end

if.end:                                           ; preds = %cond.end.39, %if.then
  br label %if.end.41

if.end.41:                                        ; preds = %if.end, %entry
  ret i32 1
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_ink_blob_type_get_type() #2

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare double @g_value_get_double(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare i32 @gtk_widget_get_state(%struct._GtkWidget*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_blob_editor_draw_blob(%struct._GimpBlobEditor* %editor, %struct._cairo* %cr, double %xc, double %yc, double %radius) #3 {
entry:
  %editor.addr = alloca %struct._GimpBlobEditor*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %xc.addr = alloca double, align 8
  %yc.addr = alloca double, align 8
  %radius.addr = alloca double, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %blob = alloca %struct._GimpBlob*, align 8
  %function = alloca %struct._GimpBlob* (double, double, double, double, double, double)*, align 8
  %i = alloca i32, align 4
  store %struct._GimpBlobEditor* %editor, %struct._GimpBlobEditor** %editor.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store double %xc, double* %xc.addr, align 8
  store double %yc, double* %yc.addr, align 8
  store double %radius, double* %radius.addr, align 8
  %0 = load %struct._GimpBlobEditor*, %struct._GimpBlobEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpBlobEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %2, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call2 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %3)
  store %struct._GtkStyle* %call2, %struct._GtkStyle** %style, align 8
  store %struct._GimpBlob* (double, double, double, double, double, double)* @gimp_blob_ellipse, %struct._GimpBlob* (double, double, double, double, double, double)** %function, align 8
  %4 = load %struct._GimpBlobEditor*, %struct._GimpBlobEditor** %editor.addr, align 8
  %type = getelementptr inbounds %struct._GimpBlobEditor, %struct._GimpBlobEditor* %4, i32 0, i32 1
  %5 = load i32, i32* %type, align 4
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.3
    i32 2, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  store %struct._GimpBlob* (double, double, double, double, double, double)* @gimp_blob_ellipse, %struct._GimpBlob* (double, double, double, double, double, double)** %function, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  store %struct._GimpBlob* (double, double, double, double, double, double)* @gimp_blob_square, %struct._GimpBlob* (double, double, double, double, double, double)** %function, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  store %struct._GimpBlob* (double, double, double, double, double, double)* @gimp_blob_diamond, %struct._GimpBlob* (double, double, double, double, double, double)** %function, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.4, %sw.bb.3, %sw.bb
  %6 = load double, double* %radius.addr, align 8
  %mul = fmul double %6, 2.000000e+00
  store double %mul, double* %radius.addr, align 8
  %7 = load %struct._GimpBlob* (double, double, double, double, double, double)*, %struct._GimpBlob* (double, double, double, double, double, double)** %function, align 8
  %8 = load double, double* %xc.addr, align 8
  %mul5 = fmul double 2.000000e+00, %8
  %9 = load double, double* %yc.addr, align 8
  %mul6 = fmul double 2.000000e+00, %9
  %10 = load double, double* %radius.addr, align 8
  %11 = load %struct._GimpBlobEditor*, %struct._GimpBlobEditor** %editor.addr, align 8
  %angle = getelementptr inbounds %struct._GimpBlobEditor, %struct._GimpBlobEditor* %11, i32 0, i32 3
  %12 = load double, double* %angle, align 8
  %call7 = call double @cos(double %12) #4
  %mul8 = fmul double %10, %call7
  %13 = load double, double* %radius.addr, align 8
  %14 = load %struct._GimpBlobEditor*, %struct._GimpBlobEditor** %editor.addr, align 8
  %angle9 = getelementptr inbounds %struct._GimpBlobEditor, %struct._GimpBlobEditor* %14, i32 0, i32 3
  %15 = load double, double* %angle9, align 8
  %call10 = call double @sin(double %15) #4
  %mul11 = fmul double %13, %call10
  %16 = load double, double* %radius.addr, align 8
  %17 = load %struct._GimpBlobEditor*, %struct._GimpBlobEditor** %editor.addr, align 8
  %aspect = getelementptr inbounds %struct._GimpBlobEditor, %struct._GimpBlobEditor* %17, i32 0, i32 2
  %18 = load double, double* %aspect, align 8
  %div = fdiv double %16, %18
  %sub = fsub double -0.000000e+00, %div
  %19 = load %struct._GimpBlobEditor*, %struct._GimpBlobEditor** %editor.addr, align 8
  %angle12 = getelementptr inbounds %struct._GimpBlobEditor, %struct._GimpBlobEditor* %19, i32 0, i32 3
  %20 = load double, double* %angle12, align 8
  %call13 = call double @sin(double %20) #4
  %mul14 = fmul double %sub, %call13
  %21 = load double, double* %radius.addr, align 8
  %22 = load %struct._GimpBlobEditor*, %struct._GimpBlobEditor** %editor.addr, align 8
  %aspect15 = getelementptr inbounds %struct._GimpBlobEditor, %struct._GimpBlobEditor* %22, i32 0, i32 2
  %23 = load double, double* %aspect15, align 8
  %div16 = fdiv double %21, %23
  %24 = load %struct._GimpBlobEditor*, %struct._GimpBlobEditor** %editor.addr, align 8
  %angle17 = getelementptr inbounds %struct._GimpBlobEditor, %struct._GimpBlobEditor* %24, i32 0, i32 3
  %25 = load double, double* %angle17, align 8
  %call18 = call double @cos(double %25) #4
  %mul19 = fmul double %div16, %call18
  %call20 = call %struct._GimpBlob* %7(double %mul5, double %mul6, double %mul8, double %mul11, double %mul14, double %mul19)
  store %struct._GimpBlob* %call20, %struct._GimpBlob** %blob, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %26 = load i32, i32* %i, align 4
  %27 = load %struct._GimpBlob*, %struct._GimpBlob** %blob, align 8
  %height = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %27, i32 0, i32 1
  %28 = load i32, i32* %height, align 4
  %cmp = icmp slt i32 %26, %28
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %i, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load %struct._GimpBlob*, %struct._GimpBlob** %blob, align 8
  %data = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %30, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data, i32 0, i64 %idxprom
  %left = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx, i32 0, i32 0
  %31 = load i32, i32* %left, align 4
  %32 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %32 to i64
  %33 = load %struct._GimpBlob*, %struct._GimpBlob** %blob, align 8
  %data22 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %33, i32 0, i32 2
  %arrayidx23 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data22, i32 0, i64 %idxprom21
  %right = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx23, i32 0, i32 1
  %34 = load i32, i32* %right, align 4
  %cmp24 = icmp sle i32 %31, %34
  br i1 %cmp24, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %35 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %36 to i64
  %37 = load %struct._GimpBlob*, %struct._GimpBlob** %blob, align 8
  %data26 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %37, i32 0, i32 2
  %arrayidx27 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data26, i32 0, i64 %idxprom25
  %left28 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx27, i32 0, i32 0
  %38 = load i32, i32* %left28, align 4
  %conv = sitofp i32 %38 to double
  %div29 = fdiv double %conv, 2.000000e+00
  %39 = load %struct._GimpBlob*, %struct._GimpBlob** %blob, align 8
  %y = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %39, i32 0, i32 0
  %40 = load i32, i32* %y, align 4
  %41 = load i32, i32* %i, align 4
  %add = add nsw i32 %40, %41
  %conv30 = sitofp i32 %add to double
  %div31 = fdiv double %conv30, 2.000000e+00
  call void @cairo_move_to(%struct._cairo* %35, double %div29, double %div31)
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %42 = load i32, i32* %i, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %43 = load i32, i32* %i, align 4
  %add32 = add nsw i32 %43, 1
  store i32 %add32, i32* %i, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.60, %for.end
  %44 = load i32, i32* %i, align 4
  %45 = load %struct._GimpBlob*, %struct._GimpBlob** %blob, align 8
  %height34 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %45, i32 0, i32 1
  %46 = load i32, i32* %height34, align 4
  %cmp35 = icmp slt i32 %44, %46
  br i1 %cmp35, label %for.body.37, label %for.end.62

for.body.37:                                      ; preds = %for.cond.33
  %47 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %47 to i64
  %48 = load %struct._GimpBlob*, %struct._GimpBlob** %blob, align 8
  %data39 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %48, i32 0, i32 2
  %arrayidx40 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data39, i32 0, i64 %idxprom38
  %left41 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx40, i32 0, i32 0
  %49 = load i32, i32* %left41, align 4
  %50 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %50 to i64
  %51 = load %struct._GimpBlob*, %struct._GimpBlob** %blob, align 8
  %data43 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %51, i32 0, i32 2
  %arrayidx44 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data43, i32 0, i64 %idxprom42
  %right45 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx44, i32 0, i32 1
  %52 = load i32, i32* %right45, align 4
  %cmp46 = icmp sgt i32 %49, %52
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %for.body.37
  br label %for.end.62

if.end.49:                                        ; preds = %for.body.37
  %53 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %54 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %54 to i64
  %55 = load %struct._GimpBlob*, %struct._GimpBlob** %blob, align 8
  %data51 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %55, i32 0, i32 2
  %arrayidx52 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data51, i32 0, i64 %idxprom50
  %left53 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx52, i32 0, i32 0
  %56 = load i32, i32* %left53, align 4
  %conv54 = sitofp i32 %56 to double
  %div55 = fdiv double %conv54, 2.000000e+00
  %57 = load %struct._GimpBlob*, %struct._GimpBlob** %blob, align 8
  %y56 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %57, i32 0, i32 0
  %58 = load i32, i32* %y56, align 4
  %59 = load i32, i32* %i, align 4
  %add57 = add nsw i32 %58, %59
  %conv58 = sitofp i32 %add57 to double
  %div59 = fdiv double %conv58, 2.000000e+00
  call void @cairo_line_to(%struct._cairo* %53, double %div55, double %div59)
  br label %for.inc.60

for.inc.60:                                       ; preds = %if.end.49
  %60 = load i32, i32* %i, align 4
  %inc61 = add nsw i32 %60, 1
  store i32 %inc61, i32* %i, align 4
  br label %for.cond.33

for.end.62:                                       ; preds = %if.then.48, %for.cond.33
  %61 = load i32, i32* %i, align 4
  %sub63 = sub nsw i32 %61, 1
  store i32 %sub63, i32* %i, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.90, %for.end.62
  %62 = load i32, i32* %i, align 4
  %cmp65 = icmp sge i32 %62, 0
  br i1 %cmp65, label %for.body.67, label %for.end.91

for.body.67:                                      ; preds = %for.cond.64
  %63 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %63 to i64
  %64 = load %struct._GimpBlob*, %struct._GimpBlob** %blob, align 8
  %data69 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %64, i32 0, i32 2
  %arrayidx70 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data69, i32 0, i64 %idxprom68
  %left71 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx70, i32 0, i32 0
  %65 = load i32, i32* %left71, align 4
  %66 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %66 to i64
  %67 = load %struct._GimpBlob*, %struct._GimpBlob** %blob, align 8
  %data73 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %67, i32 0, i32 2
  %arrayidx74 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data73, i32 0, i64 %idxprom72
  %right75 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx74, i32 0, i32 1
  %68 = load i32, i32* %right75, align 4
  %cmp76 = icmp sgt i32 %65, %68
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %for.body.67
  br label %for.end.91

if.end.79:                                        ; preds = %for.body.67
  %69 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %70 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %70 to i64
  %71 = load %struct._GimpBlob*, %struct._GimpBlob** %blob, align 8
  %data81 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %71, i32 0, i32 2
  %arrayidx82 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data81, i32 0, i64 %idxprom80
  %right83 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx82, i32 0, i32 1
  %72 = load i32, i32* %right83, align 4
  %conv84 = sitofp i32 %72 to double
  %div85 = fdiv double %conv84, 2.000000e+00
  %73 = load %struct._GimpBlob*, %struct._GimpBlob** %blob, align 8
  %y86 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %73, i32 0, i32 0
  %74 = load i32, i32* %y86, align 4
  %75 = load i32, i32* %i, align 4
  %add87 = add nsw i32 %74, %75
  %conv88 = sitofp i32 %add87 to double
  %div89 = fdiv double %conv88, 2.000000e+00
  call void @cairo_line_to(%struct._cairo* %69, double %div85, double %div89)
  br label %for.inc.90

for.inc.90:                                       ; preds = %if.end.79
  %76 = load i32, i32* %i, align 4
  %dec = add nsw i32 %76, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.64

for.end.91:                                       ; preds = %if.then.78, %for.cond.64
  %77 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_close_path(%struct._cairo* %77)
  %78 = load %struct._GimpBlob*, %struct._GimpBlob** %blob, align 8
  %79 = bitcast %struct._GimpBlob* %78 to i8*
  call void @g_free(i8* %79)
  %80 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call92 = call i32 @gtk_widget_get_state(%struct._GtkWidget* %81)
  %idxprom93 = zext i32 %call92 to i64
  %82 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %fg = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %82, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %fg, i32 0, i64 %idxprom93
  call void @gdk_cairo_set_source_color(%struct._cairo* %80, %struct._GdkColor* %arrayidx94)
  %83 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_fill(%struct._cairo* %83)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_blob_editor_get_handle(%struct._GimpBlobEditor* %editor, %struct._GdkRectangle* %rect) #3 {
entry:
  %editor.addr = alloca %struct._GimpBlobEditor*, align 8
  %rect.addr = alloca %struct._GdkRectangle*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %r = alloca i32, align 4
  store %struct._GimpBlobEditor* %editor, %struct._GimpBlobEditor** %editor.addr, align 8
  store %struct._GdkRectangle* %rect, %struct._GdkRectangle** %rect.addr, align 8
  %0 = load %struct._GimpBlobEditor*, %struct._GimpBlobEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpBlobEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %2, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %3, %struct._GdkRectangle* %allocation)
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %4 = load i32, i32* %width, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %5 = load i32, i32* %height, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %width2 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %6 = load i32, i32* %width2, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %height3 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %7 = load i32, i32* %height3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ]
  %div = sdiv i32 %cond, 2
  store i32 %div, i32* %r, align 4
  %width4 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %8 = load i32, i32* %width4, align 4
  %div5 = sdiv i32 %8, 2
  %conv = sitofp i32 %div5 to double
  %9 = load i32, i32* %r, align 4
  %conv6 = sitofp i32 %9 to double
  %mul = fmul double 8.500000e-01, %conv6
  %10 = load %struct._GimpBlobEditor*, %struct._GimpBlobEditor** %editor.addr, align 8
  %aspect = getelementptr inbounds %struct._GimpBlobEditor, %struct._GimpBlobEditor* %10, i32 0, i32 2
  %11 = load double, double* %aspect, align 8
  %mul7 = fmul double %mul, %11
  %div8 = fdiv double %mul7, 1.000000e+01
  %12 = load %struct._GimpBlobEditor*, %struct._GimpBlobEditor** %editor.addr, align 8
  %angle = getelementptr inbounds %struct._GimpBlobEditor, %struct._GimpBlobEditor* %12, i32 0, i32 3
  %13 = load double, double* %angle, align 8
  %call9 = call double @cos(double %13) #4
  %mul10 = fmul double %div8, %call9
  %add = fadd double %conv, %mul10
  %conv11 = fptosi double %add to i32
  store i32 %conv11, i32* %x, align 4
  %height12 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %14 = load i32, i32* %height12, align 4
  %div13 = sdiv i32 %14, 2
  %conv14 = sitofp i32 %div13 to double
  %15 = load i32, i32* %r, align 4
  %conv15 = sitofp i32 %15 to double
  %mul16 = fmul double 8.500000e-01, %conv15
  %16 = load %struct._GimpBlobEditor*, %struct._GimpBlobEditor** %editor.addr, align 8
  %aspect17 = getelementptr inbounds %struct._GimpBlobEditor, %struct._GimpBlobEditor* %16, i32 0, i32 2
  %17 = load double, double* %aspect17, align 8
  %mul18 = fmul double %mul16, %17
  %div19 = fdiv double %mul18, 1.000000e+01
  %18 = load %struct._GimpBlobEditor*, %struct._GimpBlobEditor** %editor.addr, align 8
  %angle20 = getelementptr inbounds %struct._GimpBlobEditor, %struct._GimpBlobEditor* %18, i32 0, i32 3
  %19 = load double, double* %angle20, align 8
  %call21 = call double @sin(double %19) #4
  %mul22 = fmul double %div19, %call21
  %add23 = fadd double %conv14, %mul22
  %conv24 = fptosi double %add23 to i32
  store i32 %conv24, i32* %y, align 4
  %20 = load i32, i32* %x, align 4
  %sub = sub nsw i32 %20, 5
  %21 = load %struct._GdkRectangle*, %struct._GdkRectangle** %rect.addr, align 8
  %x25 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %21, i32 0, i32 0
  store i32 %sub, i32* %x25, align 4
  %22 = load i32, i32* %y, align 4
  %sub26 = sub nsw i32 %22, 5
  %23 = load %struct._GdkRectangle*, %struct._GdkRectangle** %rect.addr, align 8
  %y27 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %23, i32 0, i32 1
  store i32 %sub26, i32* %y27, align 4
  %24 = load %struct._GdkRectangle*, %struct._GdkRectangle** %rect.addr, align 8
  %width28 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %24, i32 0, i32 2
  store i32 10, i32* %width28, align 4
  %25 = load %struct._GdkRectangle*, %struct._GdkRectangle** %rect.addr, align 8
  %height29 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %25, i32 0, i32 3
  store i32 10, i32* %height29, align 4
  ret void
}

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #1

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #1

declare void @cairo_fill_preserve(%struct._cairo*) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

declare void @cairo_stroke(%struct._cairo*) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare %struct._GimpBlob* @gimp_blob_ellipse(double, double, double, double, double, double) #1

declare %struct._GimpBlob* @gimp_blob_square(double, double, double, double, double, double) #1

declare %struct._GimpBlob* @gimp_blob_diamond(double, double, double, double, double, double) #1

; Function Attrs: nounwind
declare double @cos(double) #5

; Function Attrs: nounwind
declare double @sin(double) #5

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

declare void @cairo_close_path(%struct._cairo*) #1

declare void @g_free(i8*) #1

declare void @cairo_fill(%struct._cairo*) #1

; Function Attrs: nounwind
declare double @atan2(double, double) #5

; Function Attrs: nounwind
declare double @sqrt(double) #5

declare void @g_object_set(i8*, i8*, ...) #1

declare void @gtk_widget_add_events(%struct._GtkWidget*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
