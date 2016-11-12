; ModuleID = './app/widgets/gimplanguageentry.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpLanguageEntryClass = type { %struct._GtkEntryClass }
%struct._GtkEntryClass = type { %struct._GtkWidgetClass, void (%struct._GtkEntry*, %struct._GtkMenu*)*, void (%struct._GtkEntry*)*, void (%struct._GtkEntry*, i32, i32, i32)*, void (%struct._GtkEntry*, i8*)*, void (%struct._GtkEntry*, i32, i32)*, void (%struct._GtkEntry*)*, void (%struct._GtkEntry*)*, void (%struct._GtkEntry*)*, void (%struct._GtkEntry*)*, void (%struct._GtkEntry*)*, void (%struct._GtkEntry*, i32*, i32*, i32*, i32*)*, void ()*, void ()* }
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
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkMenu = type { %struct._GtkMenuShell, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAccelGroup*, i8*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i32, i32, i32, %struct._GdkRegion*, i32, i8 }
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpLanguageEntry = type { %struct._GtkEntry, %struct._GtkListStore*, i8* }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GimpLanguageStore = type { %struct._GtkListStore }
%struct._GtkEntryCompletion = type { %struct._GObject, %struct._GtkEntryCompletionPrivate* }
%struct._GtkEntryCompletionPrivate = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_language_entry_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"GimpLanguageEntry\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_language_entry_get_code = private unnamed_addr constant [29 x i8] c"gimp_language_entry_get_code\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"GIMP_IS_LANGUAGE_ENTRY (entry)\00", align 1
@__func__.gimp_language_entry_set_code = private unnamed_addr constant [29 x i8] c"gimp_language_entry_set_code\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@gimp_language_entry_parent_class = internal global i8* null, align 8
@GimpLanguageEntry_private_offset = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"inline-selection\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"match-selected\00", align 1
@__func__.gimp_language_entry_set_property = private unnamed_addr constant [33 x i8] c"gimp_language_entry_set_property\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"entry->store == NULL\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"gimplanguageentry.c\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_language_entry_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_language_entry_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_language_entry_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_entry_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 824, void (i8*, i8*)* bitcast (void (i8*)* @gimp_language_entry_class_intern_init to void (i8*, i8*)*), i32 224, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpLanguageEntry*)* @gimp_language_entry_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_language_entry_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_language_entry_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_language_entry_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_language_entry_parent_class, align 8
  %1 = load i32, i32* @GimpLanguageEntry_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpLanguageEntry_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpLanguageEntryClass*
  call void @gimp_language_entry_class_init(%struct._GimpLanguageEntryClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_language_entry_init(%struct._GimpLanguageEntry* %entry1) #3 {
entry:
  %entry.addr = alloca %struct._GimpLanguageEntry*, align 8
  store %struct._GimpLanguageEntry* %entry1, %struct._GimpLanguageEntry** %entry.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_language_entry_new() #3 {
entry:
  %entry1 = alloca %struct._GtkWidget*, align 8
  %store = alloca %struct._GtkListStore*, align 8
  %call = call %struct._GtkListStore* @gimp_language_store_new()
  store %struct._GtkListStore* %call, %struct._GtkListStore** %store, align 8
  %call2 = call i64 @gimp_language_entry_get_type() #6
  %0 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %call3 = call i8* (i64, i8*, ...) @g_object_new(i64 %call2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %struct._GtkListStore* %0, i8* null)
  %1 = bitcast i8* %call3 to %struct._GtkWidget*
  store %struct._GtkWidget* %1, %struct._GtkWidget** %entry1, align 8
  %2 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %3 = bitcast %struct._GtkListStore* %2 to i8*
  call void @g_object_unref(i8* %3)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  ret %struct._GtkWidget* %4
}

declare %struct._GtkListStore* @gimp_language_store_new() #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_language_entry_get_code(%struct._GimpLanguageEntry* %entry1) #3 {
entry:
  %retval = alloca i8*, align 8
  %entry.addr = alloca %struct._GimpLanguageEntry*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpLanguageEntry* %entry1, %struct._GimpLanguageEntry** %entry.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLanguageEntry*, %struct._GimpLanguageEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpLanguageEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_language_entry_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_language_entry_get_code, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %13 = load %struct._GimpLanguageEntry*, %struct._GimpLanguageEntry** %entry.addr, align 8
  %code = getelementptr inbounds %struct._GimpLanguageEntry, %struct._GimpLanguageEntry* %13, i32 0, i32 2
  %14 = load i8*, i8** %code, align 8
  store i8* %14, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.10
  %15 = load i8*, i8** %retval
  ret i8* %15
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_language_entry_set_code(%struct._GimpLanguageEntry* %entry1, i8* %code) #3 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca %struct._GimpLanguageEntry*, align 8
  %code.addr = alloca i8*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %label = alloca i8*, align 8
  store %struct._GimpLanguageEntry* %entry1, %struct._GimpLanguageEntry** %entry.addr, align 8
  store i8* %code, i8** %code.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLanguageEntry*, %struct._GimpLanguageEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpLanguageEntry* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_language_entry_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_language_entry_set_code, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %13 = load %struct._GimpLanguageEntry*, %struct._GimpLanguageEntry** %entry.addr, align 8
  %code12 = getelementptr inbounds %struct._GimpLanguageEntry, %struct._GimpLanguageEntry* %13, i32 0, i32 2
  %14 = load i8*, i8** %code12, align 8
  %tobool13 = icmp ne i8* %14, null
  br i1 %tobool13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %do.end
  %15 = load %struct._GimpLanguageEntry*, %struct._GimpLanguageEntry** %entry.addr, align 8
  %code15 = getelementptr inbounds %struct._GimpLanguageEntry, %struct._GimpLanguageEntry* %15, i32 0, i32 2
  %16 = load i8*, i8** %code15, align 8
  call void @g_free(i8* %16)
  %17 = load %struct._GimpLanguageEntry*, %struct._GimpLanguageEntry** %entry.addr, align 8
  %code16 = getelementptr inbounds %struct._GimpLanguageEntry, %struct._GimpLanguageEntry* %17, i32 0, i32 2
  store i8* null, i8** %code16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %do.end
  %18 = load i8*, i8** %code.addr, align 8
  %tobool18 = icmp ne i8* %18, null
  br i1 %tobool18, label %lor.lhs.false, label %if.then.21

lor.lhs.false:                                    ; preds = %if.end.17
  %19 = load i8*, i8** %code.addr, align 8
  %call19 = call i64 @strlen(i8* %19) #7
  %tobool20 = icmp ne i64 %call19, 0
  br i1 %tobool20, label %if.end.24, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false, %if.end.17
  %20 = load %struct._GimpLanguageEntry*, %struct._GimpLanguageEntry** %entry.addr, align 8
  %21 = bitcast %struct._GimpLanguageEntry* %20 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_entry_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call22)
  %22 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkEntry*
  call void @gtk_entry_set_text(%struct._GtkEntry* %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %lor.lhs.false
  %23 = load %struct._GimpLanguageEntry*, %struct._GimpLanguageEntry** %entry.addr, align 8
  %store = getelementptr inbounds %struct._GimpLanguageEntry, %struct._GimpLanguageEntry* %23, i32 0, i32 1
  %24 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %25 = bitcast %struct._GtkListStore* %24 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_language_store_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call25)
  %26 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpLanguageStore*
  %27 = load i8*, i8** %code.addr, align 8
  %call27 = call i32 @gimp_language_store_lookup(%struct._GimpLanguageStore* %26, i8* %27, %struct._GtkTreeIter* %iter)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.37

if.then.29:                                       ; preds = %if.end.24
  %28 = load %struct._GimpLanguageEntry*, %struct._GimpLanguageEntry** %entry.addr, align 8
  %store31 = getelementptr inbounds %struct._GimpLanguageEntry, %struct._GimpLanguageEntry* %28, i32 0, i32 1
  %29 = load %struct._GtkListStore*, %struct._GtkListStore** %store31, align 8
  %30 = bitcast %struct._GtkListStore* %29 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_tree_model_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call32)
  %31 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkTreeModel*
  %32 = load %struct._GimpLanguageEntry*, %struct._GimpLanguageEntry** %entry.addr, align 8
  %code34 = getelementptr inbounds %struct._GimpLanguageEntry, %struct._GimpLanguageEntry* %32, i32 0, i32 2
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %31, %struct._GtkTreeIter* %iter, i32 0, i8** %label, i32 1, i8** %code34, i32 -1)
  %33 = load %struct._GimpLanguageEntry*, %struct._GimpLanguageEntry** %entry.addr, align 8
  %34 = bitcast %struct._GimpLanguageEntry* %33 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_entry_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call35)
  %35 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkEntry*
  %36 = load i8*, i8** %label, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %35, i8* %36)
  %37 = load i8*, i8** %label, align 8
  call void @g_free(i8* %37)
  store i32 1, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.end.24
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.37, %if.then.29, %if.then.21, %if.else.10
  %38 = load i32, i32* %retval
  ret i32 %38
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i32 @gimp_language_store_lookup(%struct._GimpLanguageStore*, i8*, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_language_store_get_type() #2

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #2

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_language_entry_class_init(%struct._GimpLanguageEntryClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpLanguageEntryClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpLanguageEntryClass* %klass, %struct._GimpLanguageEntryClass** %klass.addr, align 8
  %0 = load %struct._GimpLanguageEntryClass*, %struct._GimpLanguageEntryClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpLanguageEntryClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_language_entry_constructed, void (%struct._GObject*)** %constructed, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_language_entry_finalize, void (%struct._GObject*)** %finalize, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_language_entry_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_language_entry_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call i64 @gimp_language_store_get_type() #6
  %call2 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, i64 %call1, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %7, i32 1, %struct._GParamSpec* %call2)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_language_entry_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %entry1 = alloca %struct._GimpLanguageEntry*, align 8
  %completion = alloca %struct._GtkEntryCompletion*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_language_entry_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpLanguageEntry*
  store %struct._GimpLanguageEntry* %2, %struct._GimpLanguageEntry** %entry1, align 8
  %3 = load i8*, i8** @gimp_language_entry_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_language_entry_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %constructed5 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed5, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpLanguageEntry*, %struct._GimpLanguageEntry** %entry1, align 8
  %store = getelementptr inbounds %struct._GimpLanguageEntry, %struct._GimpLanguageEntry* %12, i32 0, i32 1
  %13 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %tobool6 = icmp ne %struct._GtkListStore* %13, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %if.end
  %call8 = call i64 @gtk_entry_completion_get_type() #6
  %14 = load %struct._GimpLanguageEntry*, %struct._GimpLanguageEntry** %entry1, align 8
  %store9 = getelementptr inbounds %struct._GimpLanguageEntry, %struct._GimpLanguageEntry* %14, i32 0, i32 1
  %15 = load %struct._GtkListStore*, %struct._GtkListStore** %store9, align 8
  %call10 = call i8* (i64, i8*, ...) @g_object_new(i64 %call8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %struct._GtkListStore* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, i8* null)
  %16 = bitcast i8* %call10 to %struct._GtkEntryCompletion*
  store %struct._GtkEntryCompletion* %16, %struct._GtkEntryCompletion** %completion, align 8
  %17 = load %struct._GtkEntryCompletion*, %struct._GtkEntryCompletion** %completion, align 8
  call void @gtk_entry_completion_set_text_column(%struct._GtkEntryCompletion* %17, i32 0)
  %18 = load %struct._GimpLanguageEntry*, %struct._GimpLanguageEntry** %entry1, align 8
  %19 = bitcast %struct._GimpLanguageEntry* %18 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_entry_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call11)
  %20 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkEntry*
  %21 = load %struct._GtkEntryCompletion*, %struct._GtkEntryCompletion** %completion, align 8
  call void @gtk_entry_set_completion(%struct._GtkEntry* %20, %struct._GtkEntryCompletion* %21)
  %22 = load %struct._GtkEntryCompletion*, %struct._GtkEntryCompletion** %completion, align 8
  %23 = bitcast %struct._GtkEntryCompletion* %22 to i8*
  call void @g_object_unref(i8* %23)
  %24 = load %struct._GtkEntryCompletion*, %struct._GtkEntryCompletion** %completion, align 8
  %25 = bitcast %struct._GtkEntryCompletion* %24 to i8*
  %26 = load %struct._GimpLanguageEntry*, %struct._GimpLanguageEntry** %entry1, align 8
  %27 = bitcast %struct._GimpLanguageEntry* %26 to i8*
  %call13 = call i64 @g_signal_connect_data(i8* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkEntryCompletion*, %struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GimpLanguageEntry*)* @gimp_language_entry_language_selected to void ()*), i8* %27, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.7, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_language_entry_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %entry1 = alloca %struct._GimpLanguageEntry*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_language_entry_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpLanguageEntry*
  store %struct._GimpLanguageEntry* %2, %struct._GimpLanguageEntry** %entry1, align 8
  %3 = load %struct._GimpLanguageEntry*, %struct._GimpLanguageEntry** %entry1, align 8
  %store = getelementptr inbounds %struct._GimpLanguageEntry, %struct._GimpLanguageEntry* %3, i32 0, i32 1
  %4 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %tobool = icmp ne %struct._GtkListStore* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpLanguageEntry*, %struct._GimpLanguageEntry** %entry1, align 8
  %store3 = getelementptr inbounds %struct._GimpLanguageEntry, %struct._GimpLanguageEntry* %5, i32 0, i32 1
  %6 = load %struct._GtkListStore*, %struct._GtkListStore** %store3, align 8
  %7 = bitcast %struct._GtkListStore* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpLanguageEntry*, %struct._GimpLanguageEntry** %entry1, align 8
  %store4 = getelementptr inbounds %struct._GimpLanguageEntry, %struct._GimpLanguageEntry* %8, i32 0, i32 1
  store %struct._GtkListStore* null, %struct._GtkListStore** %store4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpLanguageEntry*, %struct._GimpLanguageEntry** %entry1, align 8
  %code = getelementptr inbounds %struct._GimpLanguageEntry, %struct._GimpLanguageEntry* %9, i32 0, i32 2
  %10 = load i8*, i8** %code, align 8
  %tobool5 = icmp ne i8* %10, null
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %11 = load %struct._GimpLanguageEntry*, %struct._GimpLanguageEntry** %entry1, align 8
  %code7 = getelementptr inbounds %struct._GimpLanguageEntry, %struct._GimpLanguageEntry* %11, i32 0, i32 2
  %12 = load i8*, i8** %code7, align 8
  call void @g_free(i8* %12)
  %13 = load %struct._GimpLanguageEntry*, %struct._GimpLanguageEntry** %entry1, align 8
  %code8 = getelementptr inbounds %struct._GimpLanguageEntry, %struct._GimpLanguageEntry* %13, i32 0, i32 2
  store i8* null, i8** %code8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end
  %14 = load i8*, i8** @gimp_language_entry_parent_class, align 8
  %15 = bitcast i8* %14 to %struct._GTypeClass*
  %call10 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %15, i64 80)
  %16 = bitcast %struct._GTypeClass* %call10 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %16, i32 0, i32 6
  %17 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %18 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %17(%struct._GObject* %18)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_language_entry_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %entry1 = alloca %struct._GimpLanguageEntry*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_language_entry_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpLanguageEntry*
  store %struct._GimpLanguageEntry* %2, %struct._GimpLanguageEntry** %entry1, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %4 = load %struct._GimpLanguageEntry*, %struct._GimpLanguageEntry** %entry1, align 8
  %store = getelementptr inbounds %struct._GimpLanguageEntry, %struct._GimpLanguageEntry* %4, i32 0, i32 1
  %5 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %cmp = icmp eq %struct._GtkListStore* %5, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_language_entry_set_property, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0))
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call3 = call i8* @g_value_dup_object(%struct._GValue* %6)
  %7 = bitcast i8* %call3 to %struct._GtkListStore*
  %8 = load %struct._GimpLanguageEntry*, %struct._GimpLanguageEntry** %entry1, align 8
  %store4 = getelementptr inbounds %struct._GimpLanguageEntry, %struct._GimpLanguageEntry* %8, i32 0, i32 1
  store %struct._GtkListStore* %7, %struct._GtkListStore** %store4, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body.5

do.body.5:                                        ; preds = %sw.default
  %9 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %9, %struct._GObject** %_glib__object, align 8
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %10, %struct._GParamSpec** %_glib__pspec, align 8
  %11 = load i32, i32* %property_id.addr, align 4
  store i32 %11, i32* %_glib__property_id, align 4
  %12 = load i32, i32* %_glib__property_id, align 4
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %13, i32 0, i32 1
  %14 = load i8*, i8** %name, align 8
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %16 = bitcast %struct._GParamSpec* %15 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %17, i32 0, i32 0
  %18 = load i64, i64* %g_type, align 8
  %call6 = call i8* @g_type_name(i64 %18)
  %19 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %20 = bitcast %struct._GObject* %19 to %struct._GTypeInstance*
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type8 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type8, align 8
  %call9 = call i8* @g_type_name(i64 %22)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i32 165, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %12, i8* %14, i8* %call6, i8* %call9)
  br label %do.end.10

do.end.10:                                        ; preds = %do.body.5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %do.end.10, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_language_entry_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %entry1 = alloca %struct._GimpLanguageEntry*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_language_entry_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpLanguageEntry*
  store %struct._GimpLanguageEntry* %2, %struct._GimpLanguageEntry** %entry1, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpLanguageEntry*, %struct._GimpLanguageEntry** %entry1, align 8
  %store = getelementptr inbounds %struct._GimpLanguageEntry, %struct._GimpLanguageEntry* %5, i32 0, i32 1
  %6 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %7 = bitcast %struct._GtkListStore* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
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
  %call3 = call i8* @g_type_name(i64 %17)
  %18 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %19 = bitcast %struct._GObject* %18 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %21)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i32 185, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %11, i8* %13, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_completion_get_type() #2

declare void @gtk_entry_completion_set_text_column(%struct._GtkEntryCompletion*, i32) #1

declare void @gtk_entry_set_completion(%struct._GtkEntry*, %struct._GtkEntryCompletion*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_language_entry_language_selected(%struct._GtkEntryCompletion* %completion, %struct._GtkTreeModel* %model, %struct._GtkTreeIter* %iter, %struct._GimpLanguageEntry* %entry1) #3 {
entry:
  %completion.addr = alloca %struct._GtkEntryCompletion*, align 8
  %model.addr = alloca %struct._GtkTreeModel*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %entry.addr = alloca %struct._GimpLanguageEntry*, align 8
  store %struct._GtkEntryCompletion* %completion, %struct._GtkEntryCompletion** %completion.addr, align 8
  store %struct._GtkTreeModel* %model, %struct._GtkTreeModel** %model.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store %struct._GimpLanguageEntry* %entry1, %struct._GimpLanguageEntry** %entry.addr, align 8
  %0 = load %struct._GimpLanguageEntry*, %struct._GimpLanguageEntry** %entry.addr, align 8
  %code = getelementptr inbounds %struct._GimpLanguageEntry, %struct._GimpLanguageEntry* %0, i32 0, i32 2
  %1 = load i8*, i8** %code, align 8
  call void @g_free(i8* %1)
  %2 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %3 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %4 = load %struct._GimpLanguageEntry*, %struct._GimpLanguageEntry** %entry.addr, align 8
  %code2 = getelementptr inbounds %struct._GimpLanguageEntry, %struct._GimpLanguageEntry* %4, i32 0, i32 2
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %2, %struct._GtkTreeIter* %3, i32 1, i8** %code2, i32 -1)
  ret i32 0
}

declare i8* @g_value_dup_object(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare void @g_value_set_object(%struct._GValue*, i8*) #1

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
