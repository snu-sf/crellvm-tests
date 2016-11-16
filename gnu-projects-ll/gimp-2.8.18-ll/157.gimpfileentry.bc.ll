; ModuleID = './libgimpwidgets/gimpfileentry.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpFileEntryClass = type { %struct._GtkBoxClass, void (%struct._GimpFileEntry*)*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GimpFileEntry = type { %struct._GtkBox, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i8*, i32, i32 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkOrientable = type opaque
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GError = type { i32, i32, i8* }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkEditable = type opaque
%struct._GtkFileChooser = type opaque
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkImage = type { %struct._GtkMisc, i32, %union.anon.1, %struct._GdkDrawable*, i32 }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%union.anon.1 = type { %struct._GtkImageAnimationData }
%struct._GtkImageAnimationData = type { %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimationIter*, i32 }
%struct._GdkPixbufAnimation = type opaque
%struct._GdkPixbufAnimationIter = type opaque

@gimp_file_entry_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpFileEntry\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Open a file selector to browse your folders\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Open a file selector to browse your files\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"gtk-no\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_file_entry_get_filename = private unnamed_addr constant [29 x i8] c"gimp_file_entry_get_filename\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"GIMP_IS_FILE_ENTRY (entry)\00", align 1
@__func__.gimp_file_entry_set_filename = private unnamed_addr constant [29 x i8] c"gimp_file_entry_set_filename\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@gimp_file_entry_parent_class = internal global i8* null, align 8
@GimpFileEntry_private_offset = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"filename-changed\00", align 1
@gimp_file_entry_signals = internal global [1 x i32] zeroinitializer, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"gtk-open\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"activate\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"focus-out-event\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Select Folder\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Select File\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"gimp-file-entry-file-dialog\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"delete-event\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"unmap\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"gtk-yes\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_file_entry_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_file_entry_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_file_entry_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_box_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 864, void (i8*, i8*)* bitcast (void (i8*)* @gimp_file_entry_class_intern_init to void (i8*, i8*)*), i32 176, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpFileEntry*)* @gimp_file_entry_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_file_entry_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_file_entry_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_file_entry_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_file_entry_parent_class, align 8
  %1 = load i32, i32* @GimpFileEntry_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpFileEntry_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpFileEntryClass*
  call void @gimp_file_entry_class_init(%struct._GimpFileEntryClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_file_entry_init(%struct._GimpFileEntry* %entry1) #3 {
entry:
  %entry.addr = alloca %struct._GimpFileEntry*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  store %struct._GimpFileEntry* %entry1, %struct._GimpFileEntry** %entry.addr, align 8
  %0 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %title = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %0, i32 0, i32 5
  store i8* null, i8** %title, align 8
  %1 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %file_dialog = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %1, i32 0, i32 4
  store %struct._GtkWidget* null, %struct._GtkWidget** %file_dialog, align 8
  %2 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %check_valid = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %2, i32 0, i32 7
  store i32 0, i32* %check_valid, align 4
  %3 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %file_exists = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %3, i32 0, i32 1
  store %struct._GtkWidget* null, %struct._GtkWidget** %file_exists, align 8
  %4 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %5 = bitcast %struct._GimpFileEntry* %4 to %struct._GTypeInstance*
  %call = call i64 @gtk_orientable_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkOrientable*
  call void @gtk_orientable_set_orientation(%struct._GtkOrientable* %6, i32 0)
  %7 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %8 = bitcast %struct._GimpFileEntry* %7 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_box_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call3)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkBox*
  call void @gtk_box_set_spacing(%struct._GtkBox* %9, i32 4)
  %10 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %11 = bitcast %struct._GimpFileEntry* %10 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_box_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call5)
  %12 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkBox*
  call void @gtk_box_set_homogeneous(%struct._GtkBox* %12, i32 0)
  %call7 = call %struct._GtkWidget* @gtk_button_new()
  %13 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %browse_button = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %13, i32 0, i32 3
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %browse_button, align 8
  %14 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %15 = bitcast %struct._GimpFileEntry* %14 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_box_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call8)
  %16 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkBox*
  %17 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %browse_button10 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %17, i32 0, i32 3
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %browse_button10, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %16, %struct._GtkWidget* %18, i32 0, i32 0, i32 0)
  %19 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %browse_button11 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %19, i32 0, i32 3
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %browse_button11, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %call12 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %image, align 8
  %21 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %browse_button13 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %21, i32 0, i32 3
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %browse_button13, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_container_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call14)
  %24 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkContainer*
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_container_add(%struct._GtkContainer* %24, %struct._GtkWidget* %25)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %26)
  %27 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %browse_button16 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %27, i32 0, i32 3
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %browse_button16, align 8
  %29 = bitcast %struct._GtkWidget* %28 to i8*
  %30 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %31 = bitcast %struct._GimpFileEntry* %30 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpFileEntry*)* @gimp_file_entry_browse_clicked to void ()*), i8* %31, void (i8*, %struct._GClosure*)* null, i32 0)
  %call18 = call %struct._GtkWidget* @gtk_entry_new()
  %32 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %entry19 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %32, i32 0, i32 2
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %entry19, align 8
  %33 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %34 = bitcast %struct._GimpFileEntry* %33 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_box_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call20)
  %35 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkBox*
  %36 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %entry22 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %36, i32 0, i32 2
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %entry22, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %35, %struct._GtkWidget* %37, i32 1, i32 1, i32 0)
  %38 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %entry23 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %38, i32 0, i32 2
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %entry23, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %39)
  %40 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %entry24 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %40, i32 0, i32 2
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %entry24, align 8
  %42 = bitcast %struct._GtkWidget* %41 to i8*
  %43 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %44 = bitcast %struct._GimpFileEntry* %43 to i8*
  %call25 = call i64 @g_signal_connect_data(i8* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpFileEntry*)* @gimp_file_entry_entry_activate to void ()*), i8* %44, void (i8*, %struct._GClosure*)* null, i32 0)
  %45 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %entry26 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %45, i32 0, i32 2
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %entry26, align 8
  %47 = bitcast %struct._GtkWidget* %46 to i8*
  %48 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %49 = bitcast %struct._GimpFileEntry* %48 to i8*
  %call27 = call i64 @g_signal_connect_data(i8* %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._GimpFileEntry*)* @gimp_file_entry_entry_focus_out to void ()*), i8* %49, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_file_entry_new(i8* %title, i8* %filename, i32 %dir_only, i32 %check_valid) #3 {
entry:
  %title.addr = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  %dir_only.addr = alloca i32, align 4
  %check_valid.addr = alloca i32, align 4
  %entry1 = alloca %struct._GimpFileEntry*, align 8
  store i8* %title, i8** %title.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %dir_only, i32* %dir_only.addr, align 4
  store i32 %check_valid, i32* %check_valid.addr, align 4
  %call = call i64 @gimp_file_entry_get_type() #6
  %call2 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call2 to %struct._GimpFileEntry*
  store %struct._GimpFileEntry* %0, %struct._GimpFileEntry** %entry1, align 8
  %1 = load i8*, i8** %title.addr, align 8
  %call3 = call noalias i8* @g_strdup(i8* %1)
  %2 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry1, align 8
  %title4 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %2, i32 0, i32 5
  store i8* %call3, i8** %title4, align 8
  %3 = load i32, i32* %dir_only.addr, align 4
  %4 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry1, align 8
  %dir_only5 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %4, i32 0, i32 6
  store i32 %3, i32* %dir_only5, align 4
  %5 = load i32, i32* %check_valid.addr, align 4
  %6 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry1, align 8
  %check_valid6 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %6, i32 0, i32 7
  store i32 %5, i32* %check_valid6, align 4
  %7 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry1, align 8
  %browse_button = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %7, i32 0, i32 3
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %browse_button, align 8
  %9 = load i32, i32* %dir_only.addr, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call7 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0)) #7
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call8 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0)) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call7, %cond.true ], [ %call8, %cond.false ]
  call void @gimp_help_set_help_data(%struct._GtkWidget* %8, i8* %cond, i8* null)
  %10 = load i32, i32* %check_valid.addr, align 4
  %tobool9 = icmp ne i32 %10, 0
  br i1 %tobool9, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %call10 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 4)
  %11 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry1, align 8
  %file_exists = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %11, i32 0, i32 1
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %file_exists, align 8
  %12 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry1, align 8
  %13 = bitcast %struct._GimpFileEntry* %12 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_box_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call11)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkBox*
  %15 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry1, align 8
  %file_exists13 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %15, i32 0, i32 1
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %file_exists13, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %14, %struct._GtkWidget* %16, i32 0, i32 0, i32 0)
  %17 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry1, align 8
  %file_exists14 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %17, i32 0, i32 1
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %file_exists14, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %19 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry1, align 8
  %20 = load i8*, i8** %filename.addr, align 8
  call void @gimp_file_entry_set_filename(%struct._GimpFileEntry* %19, i8* %20)
  %21 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry1, align 8
  %22 = bitcast %struct._GimpFileEntry* %21 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_widget_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call15)
  %23 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkWidget*
  ret %struct._GtkWidget* %23
}

declare i8* @g_object_new(i64, i8*, ...) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #4

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @gimp_file_entry_set_filename(%struct._GimpFileEntry* %entry1, i8* %filename) #3 {
entry:
  %entry.addr = alloca %struct._GimpFileEntry*, align 8
  %filename.addr = alloca i8*, align 8
  %utf8 = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpFileEntry* %entry1, %struct._GimpFileEntry** %entry.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpFileEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_file_entry_get_type() #6
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
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_file_entry_set_filename, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %13 = load i8*, i8** %filename.addr, align 8
  %tobool12 = icmp ne i8* %13, null
  br i1 %tobool12, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %do.end
  %14 = load i8*, i8** %filename.addr, align 8
  %call14 = call noalias i8* @g_filename_to_utf8(i8* %14, i64 -1, i64* null, i64* null, %struct._GError** null)
  store i8* %call14, i8** %utf8, align 8
  br label %if.end.17

if.else.15:                                       ; preds = %do.end
  %call16 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0))
  store i8* %call16, i8** %utf8, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.13
  %15 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %entry18 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %15, i32 0, i32 2
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %entry18, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_entry_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call19)
  %18 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkEntry*
  %19 = load i8*, i8** %utf8, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %18, i8* %19)
  %20 = load i8*, i8** %utf8, align 8
  call void @g_free(i8* %20)
  %21 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %entry21 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %21, i32 0, i32 2
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %entry21, align 8
  %23 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  call void @gimp_file_entry_entry_activate(%struct._GtkWidget* %22, %struct._GimpFileEntry* %23)
  br label %return

return:                                           ; preds = %if.end.17, %if.else.10
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define i8* @gimp_file_entry_get_filename(%struct._GimpFileEntry* %entry1) #3 {
entry:
  %retval = alloca i8*, align 8
  %entry.addr = alloca %struct._GimpFileEntry*, align 8
  %utf8 = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpFileEntry* %entry1, %struct._GimpFileEntry** %entry.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpFileEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_file_entry_get_type() #6
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
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_file_entry_get_filename, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %13 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %entry12 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %13, i32 0, i32 2
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %entry12, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_editable_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call13)
  %16 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkEditable*
  %call15 = call i8* @gtk_editable_get_chars(%struct._GtkEditable* %16, i32 0, i32 -1)
  store i8* %call15, i8** %utf8, align 8
  %17 = load i8*, i8** %utf8, align 8
  %call16 = call noalias i8* @g_filename_from_utf8(i8* %17, i64 -1, i64* null, i64* null, %struct._GError** null)
  store i8* %call16, i8** %filename, align 8
  %18 = load i8*, i8** %utf8, align 8
  call void @g_free(i8* %18)
  %19 = load i8*, i8** %filename, align 8
  store i8* %19, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.10
  %20 = load i8*, i8** %retval
  ret i8* %20
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #5

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @gtk_editable_get_chars(%struct._GtkEditable*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_editable_get_type() #2

declare noalias i8* @g_filename_from_utf8(i8*, i64, i64*, i64*, %struct._GError**) #1

declare void @g_free(i8*) #1

declare noalias i8* @g_filename_to_utf8(i8*, i64, i64*, i64*, %struct._GError**) #1

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_file_entry_entry_activate(%struct._GtkWidget* %widget, %struct._GimpFileEntry* %entry1) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %entry.addr = alloca %struct._GimpFileEntry*, align 8
  %utf8 = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %len = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpFileEntry* %entry1, %struct._GimpFileEntry** %entry.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_editable_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkEditable*
  %call3 = call i8* @gtk_editable_get_chars(%struct._GtkEditable* %2, i32 0, i32 -1)
  store i8* %call3, i8** %utf8, align 8
  %3 = load i8*, i8** %utf8, align 8
  %call4 = call i8* @g_strchug(i8* %3)
  %call5 = call i8* @g_strchomp(i8* %call4)
  store i8* %call5, i8** %utf8, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load i8*, i8** %utf8, align 8
  %call6 = call i64 @strlen(i8* %4) #8
  %conv = trunc i64 %call6 to i32
  store i32 %conv, i32* %len, align 4
  %cmp = icmp sgt i32 %conv, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %5, 1
  %idxprom = sext i32 %sub to i64
  %6 = load i8*, i8** %utf8, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv8 = sext i8 %7 to i32
  %cmp9 = icmp eq i32 %conv8, 47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp9, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i32, i32* %len, align 4
  %sub11 = sub nsw i32 %9, 1
  %idxprom12 = sext i32 %sub11 to i64
  %10 = load i8*, i8** %utf8, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %10, i64 %idxprom12
  store i8 0, i8* %arrayidx13, align 1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load i8*, i8** %utf8, align 8
  %call14 = call noalias i8* @g_filename_from_utf8(i8* %11, i64 -1, i64* null, i64* null, %struct._GError** null)
  store i8* %call14, i8** %filename, align 8
  %12 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %entry15 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %12, i32 0, i32 2
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %entry15, align 8
  %14 = bitcast %struct._GtkWidget* %13 to i8*
  %15 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %16 = bitcast %struct._GimpFileEntry* %15 to i8*
  %call16 = call i32 @g_signal_handlers_block_matched(i8* %14, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpFileEntry*)* @gimp_file_entry_entry_activate to i8*), i8* %16)
  %17 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %entry17 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %17, i32 0, i32 2
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %entry17, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_entry_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call18)
  %20 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkEntry*
  %21 = load i8*, i8** %utf8, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %20, i8* %21)
  %22 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %entry20 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %22, i32 0, i32 2
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %entry20, align 8
  %24 = bitcast %struct._GtkWidget* %23 to i8*
  %25 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %26 = bitcast %struct._GimpFileEntry* %25 to i8*
  %call21 = call i32 @g_signal_handlers_unblock_matched(i8* %24, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpFileEntry*)* @gimp_file_entry_entry_activate to i8*), i8* %26)
  %27 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %file_dialog = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %27, i32 0, i32 4
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %file_dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %28, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %29 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %file_dialog22 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %29, i32 0, i32 4
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %file_dialog22, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_file_chooser_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call23)
  %32 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkFileChooser*
  %33 = load i8*, i8** %filename, align 8
  %call25 = call i32 @gtk_file_chooser_set_filename(%struct._GtkFileChooser* %32, i8* %33)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %34 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %34)
  %35 = load i8*, i8** %utf8, align 8
  call void @g_free(i8* %35)
  %36 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  call void @gimp_file_entry_check_filename(%struct._GimpFileEntry* %36)
  %37 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %entry26 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %37, i32 0, i32 2
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %entry26, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_editable_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call27)
  %40 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkEditable*
  call void @gtk_editable_set_position(%struct._GtkEditable* %40, i32 -1)
  %41 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %42 = bitcast %struct._GimpFileEntry* %41 to i8*
  %43 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gimp_file_entry_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %42, i32 %43, i32 0)
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_file_entry_class_init(%struct._GimpFileEntryClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpFileEntryClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpFileEntryClass* %klass, %struct._GimpFileEntryClass** %klass.addr, align 8
  %0 = load %struct._GimpFileEntryClass*, %struct._GimpFileEntryClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpFileEntryClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpFileEntryClass*, %struct._GimpFileEntryClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpFileEntryClass* %3 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %4, i32 0, i32 0
  %5 = load i64, i64* %g_type, align 8
  %call1 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i64 %5, i32 1, i32 824, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call1, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gimp_file_entry_signals, i32 0, i64 0), align 4
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_file_entry_dispose, void (%struct._GObject*)** %dispose, align 8
  %7 = load %struct._GimpFileEntryClass*, %struct._GimpFileEntryClass** %klass.addr, align 8
  %filename_changed = getelementptr inbounds %struct._GimpFileEntryClass, %struct._GimpFileEntryClass* %7, i32 0, i32 1
  store void (%struct._GimpFileEntry*)* null, void (%struct._GimpFileEntry*)** %filename_changed, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_file_entry_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %entry1 = alloca %struct._GimpFileEntry*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_file_entry_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpFileEntry*
  store %struct._GimpFileEntry* %2, %struct._GimpFileEntry** %entry1, align 8
  %3 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry1, align 8
  %file_dialog = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %3, i32 0, i32 4
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %file_dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry1, align 8
  %file_dialog3 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %5, i32 0, i32 4
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %file_dialog3, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %6)
  %7 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry1, align 8
  %file_dialog4 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %7, i32 0, i32 4
  store %struct._GtkWidget* null, %struct._GtkWidget** %file_dialog4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry1, align 8
  %title = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %8, i32 0, i32 5
  %9 = load i8*, i8** %title, align 8
  %tobool5 = icmp ne i8* %9, null
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %10 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry1, align 8
  %title7 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %10, i32 0, i32 5
  %11 = load i8*, i8** %title7, align 8
  call void @g_free(i8* %11)
  %12 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry1, align 8
  %title8 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %12, i32 0, i32 5
  store i8* null, i8** %title8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end
  %13 = load i8*, i8** @gimp_file_entry_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call10 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 80)
  %15 = bitcast %struct._GTypeClass* %call10 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 5
  %16 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %17 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %16(%struct._GObject* %17)
  ret void
}

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gtk_orientable_set_orientation(%struct._GtkOrientable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_orientable_get_type() #2

declare void @gtk_box_set_spacing(%struct._GtkBox*, i32) #1

declare void @gtk_box_set_homogeneous(%struct._GtkBox*, i32) #1

declare %struct._GtkWidget* @gtk_button_new() #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_file_entry_browse_clicked(%struct._GtkWidget* %widget, %struct._GimpFileEntry* %entry1) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %entry.addr = alloca %struct._GimpFileEntry*, align 8
  %chooser = alloca %struct._GtkFileChooser*, align 8
  %utf8 = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %title = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpFileEntry* %entry1, %struct._GimpFileEntry** %entry.addr, align 8
  %0 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %entry2 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %0, i32 0, i32 2
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %entry2, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_editable_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkEditable*
  %call4 = call i8* @gtk_editable_get_chars(%struct._GtkEditable* %3, i32 0, i32 -1)
  store i8* %call4, i8** %utf8, align 8
  %4 = load i8*, i8** %utf8, align 8
  %call5 = call noalias i8* @g_filename_from_utf8(i8* %4, i64 -1, i64* null, i64* null, %struct._GError** null)
  store i8* %call5, i8** %filename, align 8
  %5 = load i8*, i8** %utf8, align 8
  call void @g_free(i8* %5)
  %6 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %file_dialog = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %6, i32 0, i32 4
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %file_dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %7, null
  br i1 %tobool, label %if.else.31, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %title6 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %8, i32 0, i32 5
  %9 = load i8*, i8** %title6, align 8
  store i8* %9, i8** %title, align 8
  %10 = load i8*, i8** %title, align 8
  %tobool7 = icmp ne i8* %10, null
  br i1 %tobool7, label %if.end.13, label %if.then.8

if.then.8:                                        ; preds = %if.then
  %11 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %dir_only = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %11, i32 0, i32 6
  %12 = load i32, i32* %dir_only, align 4
  %tobool9 = icmp ne i32 %12, 0
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then.8
  %call11 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0)) #7
  store i8* %call11, i8** %title, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.8
  %call12 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0)) #7
  store i8* %call12, i8** %title, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.10
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  %13 = load i8*, i8** %title, align 8
  %14 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %dir_only14 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %14, i32 0, i32 6
  %15 = load i32, i32* %dir_only14, align 4
  %tobool15 = icmp ne i32 %15, 0
  %cond = select i1 %tobool15, i32 2, i32 0
  %call16 = call %struct._GtkWidget* (i8*, %struct._GtkWindow*, i32, i8*, ...) @gtk_file_chooser_dialog_new(i8* %13, %struct._GtkWindow* null, i32 %cond, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i32 -5, i8* null)
  %16 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %file_dialog17 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %16, i32 0, i32 4
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %file_dialog17, align 8
  %17 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %file_dialog18 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %17, i32 0, i32 4
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %file_dialog18, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_dialog_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call19)
  %20 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %20, i32 -5, i32 -6, i32 -1)
  %21 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %file_dialog21 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %21, i32 0, i32 4
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %file_dialog21, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_file_chooser_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call22)
  %24 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkFileChooser*
  store %struct._GtkFileChooser* %24, %struct._GtkFileChooser** %chooser, align 8
  %25 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %26 = bitcast %struct._GtkFileChooser* %25 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_window_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call24)
  %27 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkWindow*
  call void @gtk_window_set_position(%struct._GtkWindow* %27, i32 2)
  %28 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %29 = bitcast %struct._GtkFileChooser* %28 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_window_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call26)
  %30 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkWindow*
  call void @gtk_window_set_role(%struct._GtkWindow* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i32 0, i32 0))
  %31 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %32 = bitcast %struct._GtkFileChooser* %31 to i8*
  %33 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %34 = bitcast %struct._GimpFileEntry* %33 to i8*
  %call28 = call i64 @g_signal_connect_data(i8* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._GimpFileEntry*)* @gimp_file_entry_chooser_response to void ()*), i8* %34, void (i8*, %struct._GClosure*)* null, i32 0)
  %35 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %36 = bitcast %struct._GtkFileChooser* %35 to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), void ()* bitcast (i32 ()* @gtk_true to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %37 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %38 = bitcast %struct._GimpFileEntry* %37 to i8*
  %39 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %40 = bitcast %struct._GtkFileChooser* %39 to i8*
  %call30 = call i64 @g_signal_connect_data(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @gtk_widget_hide to void ()*), i8* %40, void (i8*, %struct._GClosure*)* null, i32 2)
  br label %if.end.35

if.else.31:                                       ; preds = %entry
  %41 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %file_dialog32 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %41, i32 0, i32 4
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %file_dialog32, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_file_chooser_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call33)
  %44 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkFileChooser*
  store %struct._GtkFileChooser* %44, %struct._GtkFileChooser** %chooser, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.31, %if.end.13
  %45 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %46 = load i8*, i8** %filename, align 8
  %call36 = call i32 @gtk_file_chooser_set_filename(%struct._GtkFileChooser* %45, i8* %46)
  %47 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %47)
  %48 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %49 = bitcast %struct._GtkFileChooser* %48 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_window_get_type() #6
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call37)
  %50 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkWindow*
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call39 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %51)
  call void @gtk_window_set_screen(%struct._GtkWindow* %50, %struct._GdkScreen* %call39)
  %52 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %53 = bitcast %struct._GtkFileChooser* %52 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_window_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call40)
  %54 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %54)
  ret void
}

declare %struct._GtkWidget* @gtk_entry_new() #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_file_entry_entry_focus_out(%struct._GtkWidget* %widget, %union._GdkEvent* %event, %struct._GimpFileEntry* %entry1) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %entry.addr = alloca %struct._GimpFileEntry*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store %struct._GimpFileEntry* %entry1, %struct._GimpFileEntry** %entry.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  call void @gimp_file_entry_entry_activate(%struct._GtkWidget* %0, %struct._GimpFileEntry* %1)
  ret i32 0
}

declare %struct._GtkWidget* @gtk_file_chooser_dialog_new(i8*, %struct._GtkWindow*, i32, i8*, ...) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #2

declare void @gtk_window_set_position(%struct._GtkWindow*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare void @gtk_window_set_role(%struct._GtkWindow*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_file_entry_chooser_response(%struct._GtkWidget* %dialog, i32 %response_id, %struct._GimpFileEntry* %entry1) #3 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %entry.addr = alloca %struct._GimpFileEntry*, align 8
  %filename = alloca i8*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._GimpFileEntry* %entry1, %struct._GimpFileEntry** %entry.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_file_chooser_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkFileChooser*
  %call3 = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %3)
  store i8* %call3, i8** %filename, align 8
  %4 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %5 = load i8*, i8** %filename, align 8
  call void @gimp_file_entry_set_filename(%struct._GimpFileEntry* %4, i8* %5)
  %6 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %7)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @gtk_true() #2

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

declare i32 @gtk_file_chooser_set_filename(%struct._GtkFileChooser*, i8*) #1

declare void @gtk_window_set_screen(%struct._GtkWindow*, %struct._GdkScreen*) #1

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

declare void @gtk_window_present(%struct._GtkWindow*) #1

declare i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser*) #1

declare i8* @g_strchomp(i8*) #1

declare i8* @g_strchug(i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_file_entry_check_filename(%struct._GimpFileEntry* %entry1) #3 {
entry:
  %entry.addr = alloca %struct._GimpFileEntry*, align 8
  %utf8 = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %exists = alloca i32, align 4
  store %struct._GimpFileEntry* %entry1, %struct._GimpFileEntry** %entry.addr, align 8
  %0 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %check_valid = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %0, i32 0, i32 7
  %1 = load i32, i32* %check_valid, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %file_exists = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %2, i32 0, i32 1
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %file_exists, align 8
  %tobool2 = icmp ne %struct._GtkWidget* %3, null
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %entry3 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %4, i32 0, i32 2
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %entry3, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call = call i64 @gtk_editable_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkEditable*
  %call5 = call i8* @gtk_editable_get_chars(%struct._GtkEditable* %7, i32 0, i32 -1)
  store i8* %call5, i8** %utf8, align 8
  %8 = load i8*, i8** %utf8, align 8
  %call6 = call noalias i8* @g_filename_from_utf8(i8* %8, i64 -1, i64* null, i64* null, %struct._GError** null)
  store i8* %call6, i8** %filename, align 8
  %9 = load i8*, i8** %utf8, align 8
  call void @g_free(i8* %9)
  %10 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %dir_only = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %10, i32 0, i32 6
  %11 = load i32, i32* %dir_only, align 4
  %tobool7 = icmp ne i32 %11, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %12 = load i8*, i8** %filename, align 8
  %call9 = call i32 @g_file_test(i8* %12, i32 4)
  store i32 %call9, i32* %exists, align 4
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %13 = load i8*, i8** %filename, align 8
  %call10 = call i32 @g_file_test(i8* %13, i32 1)
  store i32 %call10, i32* %exists, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.8
  %14 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %14)
  %15 = load %struct._GimpFileEntry*, %struct._GimpFileEntry** %entry.addr, align 8
  %file_exists12 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %15, i32 0, i32 1
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %file_exists12, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_image_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkImage*
  %19 = load i32, i32* %exists, align 4
  %tobool15 = icmp ne i32 %19, 0
  %cond = select i1 %tobool15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0)
  call void @gtk_image_set_from_stock(%struct._GtkImage* %18, i8* %cond, i32 4)
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  ret void
}

declare void @gtk_editable_set_position(%struct._GtkEditable*, i32) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

declare i32 @g_file_test(i8*, i32) #1

declare void @gtk_image_set_from_stock(%struct._GtkImage*, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_image_get_type() #2

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
